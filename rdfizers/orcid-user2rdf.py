#####################################################################################################
# Ce script n'utilise plus de cache, on remet à jour les generated_names du graph USER en les
# comparant à ceux que renvoient l'API ORCID.
#####################################################################################################

import requests
import json
import argparse
import urllib
from rdflib import Graph, Literal as l, Namespace, RDF, RDFS, URIRef as u, XSD
from rdflib.term import Variable
from pprint import pprint
import uuid


#####################################################################################################
# SETUP
#####################################################################################################

ORCID_GENERATED_NAME_E55_UUID = "73ea8d74-3526-4f6a-8830-dd369795650d"

parser = argparse.ArgumentParser()
parser.add_argument("--output_ttl")
parser.add_argument("--output_backup_ttl")
args = parser.parse_args()

iremus_ns = Namespace("http://data-iremus.huma-num.fr/id/")
crm_ns = Namespace("http://www.cidoc-crm.org/cidoc-crm/")
sherlock_ns = Namespace("http://data-iremus.huma-num.fr/ns/sherlock#")

g = Graph(base=str(iremus_ns))
g.bind("crm", crm_ns)
g.bind("iremus", iremus_ns)
g.bind("sherlock", sherlock_ns)

#####################################################################################################
# RÉCUPÉRATION DU GRAPH USER COMPLET
#####################################################################################################

print("Fetching Sherlock user graph data...")

query = """
CONSTRUCT { ?s ?p ?o } 
WHERE { 
    GRAPH <http://data-iremus.huma-num.fr/graph/users> { ?s ?p ?o } 
}
"""
r = requests.get("http://data-iremus.huma-num.fr/sparql?query=" + urllib.parse.quote((query)))

g.parse(data=r.text, format='ttl')
g.serialize(destination=args.output_backup_ttl)

#####################################################################################################
# RÉCUPÉRATION DE LA LISTE DES UTILISATEURS SHERLOCK AVEC UN ORCID
#####################################################################################################

query = """
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX crm: <http://www.cidoc-crm.org/cidoc-crm/>
select ?user ?orcid ?orcid_generated_name_identifier ?orcid_generated_name
where {
		?user rdf:type crm:E21_Person .
    	?user crm:P1_is_identified_by ?orcid_identifier .
    	?orcid_identifier rdf:type crm:E42_Identifier .
    	?orcid_identifier crm:P2_has_type <http://data-iremus.huma-num.fr/id/d7ef2583-ff31-4913-9ed3-bc3a1c664b21> .
    	?orcid_identifier crm:P190_has_symbolic_content ?orcid .
        OPTIONAL {
            ?user crm:P1_is_identified_by ?orcid_generated_name_identifier .
            ?orcid_generated_name_identifier crm:P2_has_type <http://data-iremus.huma-num.fr/id/73ea8d74-3526-4f6a-8830-dd369795650d>. #ORCID NAME IDENTIFIER
            ?orcid_generated_name_identifier crm:P190_has_symbolic_content ?orcid_generated_name .
        }
}
"""

#sherlock_users_jsonb = json.loads(r.text)


#####################################################################################################
# RÉCUPÉRATION ET GÉNÉRATION DU NOM DE CHAQUE UTILISATEUR SHERLOCK QUI A UN ORCID ID
#####################################################################################################

for row in g.query(query).bindings:
    orcid_id = row[Variable("orcid")].value
    user_uuid = row["user"].split("/")[-1]

    response = requests.get(f"https://pub.orcid.org/v3.0/{orcid_id}/", headers={'Content-Type': 'application/json'})
    user = response.json()

    # Family name can be undefined, given names cannot.
    given_names = user["person"]["name"]["given-names"]["value"]
    family_name = " " + user["person"]["name"]["family-name"]["value"] if user["person"]["name"]["family-name"] else ""
    orcid_generated_name = f'{given_names}{family_name}'

    orcid_generated_name_identifier = u(row["orcid_generated_name_identifier"]) if "orcid_generated_name_identifier" in row else iremus_ns[str(uuid.uuid4())]

    g.add((iremus_ns[user_uuid], crm_ns["P1_is_identified_by"], orcid_generated_name_identifier))
    g.add((orcid_generated_name_identifier, RDF.type, crm_ns["E41_Appellation"]))
    g.add((orcid_generated_name_identifier, crm_ns["P2_has_type"], iremus_ns[ORCID_GENERATED_NAME_E55_UUID]))
    g.remove((orcid_generated_name_identifier, crm_ns["P190_has_symbolic_content"], None))
    g.add((orcid_generated_name_identifier, crm_ns["P190_has_symbolic_content"], l(orcid_generated_name)))


#####################################################################################################
# ECRITURE DU TTL
#####################################################################################################

g.serialize(destination=args.output_ttl)