#####################################################################################################
# Ce script n'utilise plus de cache, on remet à jour les generated_names du graph USER en les
# comparant à ceux que renvoient l'API ORCID.
#####################################################################################################

import requests
import json
import argparse
import urllib
from rdflib import Graph, Literal as l, Namespace, RDF, RDFS, URIRef as u, XSD
from pprint import pprint
import uuid


#####################################################################################################
# SETUP
#####################################################################################################

ORCID_GENERATED_NAME_E55_UUID = "73ea8d74-3526-4f6a-8830-dd369795650d"

parser = argparse.ArgumentParser()
parser.add_argument("--output_ttl")
parser.add_argument("--output_old_ttl")
args = parser.parse_args()

iremus_ns = Namespace("http://data-iremus.huma-num.fr/id/")
crm_ns = Namespace("http://www.cidoc-crm.org/cidoc-crm/")
sherlock_ns = Namespace("http://data-iremus.huma-num.fr/ns/sherlock#")

g = Graph(base=str(iremus_ns))
g.bind("crm", crm_ns)
g.bind("iremus", iremus_ns)
g.bind("sherlock", sherlock_ns)

old_g = Graph(base=str(iremus_ns))
old_g.bind("crm", crm_ns)
old_g.bind("iremus", iremus_ns)
old_g.bind("sherlock", sherlock_ns)

#####################################################################################################
# RÉCUPÉRATION DE LA LISTE DES UTILISATEURS SHERLOCK AVEC UN ORCID
#####################################################################################################

print("Fetching Sherlock user data...")

query = """
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX crm: <http://www.cidoc-crm.org/cidoc-crm/>
select ?user ?orcid ?orcid_generated_name_identifier ?orcid_generated_name
where {
 	graph <http://data-iremus.huma-num.fr/graph/users> {
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
}
"""
r = requests.get("http://data-iremus.huma-num.fr/sparql?query=" + urllib.parse.quote((query)))
sherlock_users_jsonb = json.loads(r.text)


#####################################################################################################
# RÉCUPÉRATION ET GÉNÉRATION DU NOM DE CHAQUE UTILISATEUR SHERLOCK QUI A UN ORCID ID
#####################################################################################################

user_dict = {}

for row in sherlock_users_jsonb["results"]["bindings"]:
    orcid_id = row['orcid']['value']
    user_uuid = row["user"]["value"].split("/")[-1]

    response = requests.get(f"https://pub.orcid.org/v3.0/{orcid_id}/", headers={'Content-Type': 'application/json'})
    user = response.json()

    # Family name can be undefined, given names cannot.
    given_names = user["person"]["name"]["given-names"]["value"]
    family_name = " " + user["person"]["name"]["family-name"]["value"] if user["person"]["name"]["family-name"] else ""
    orcid_generated_name = f'{given_names}{family_name}'

    user_dict[user_uuid] = {}
    user_dict[user_uuid]["orcid_generated_name"] = orcid_generated_name
    if 'orcid_generated_name' in row:
        user_dict[user_uuid]["previous_orcid_generated_name_identifier"] = row['orcid_generated_name']['value']
        user_dict[user_uuid]["orcid_generated_name_identifier"] = row['orcid_generated_name_identifier']['value']

#####################################################################################################
# GÉNÉRATION DU TTL DE SUPPRESION DES NOMS LORSQU'ILS ONT DÉJÀ ÉTÉ REMPLIS
#####################################################################################################
for user_uuid in user_dict:
    if "orcid_generated_name_identifier" in user_dict[user_uuid]:
        old_g.add((
            u(user_dict[user_uuid]["orcid_generated_name_identifier"]), 
            crm_ns["P190_has_symbolic_content"], 
            l(user_dict[user_uuid]["previous_orcid_generated_name_identifier"])
        ))

#####################################################################################################
# GÉNÉRATION DU TTL D'ATTRIBUTION DES GENERATED NAMES
#####################################################################################################
for user_uuid in user_dict:
    orcid_generated_name_identifier = u(user_dict[user_uuid]["orcid_generated_name_identifier"]) if "previous_orcid_generated_name_identifier" in user_dict[user_uuid] else iremus_ns[str(uuid.uuid4())]

    g.add((iremus_ns[user_uuid], crm_ns["P1_is_identified_by"], orcid_generated_name_identifier))
    g.add((orcid_generated_name_identifier, RDF.type, crm_ns["E41_Appellation"]))
    g.add((orcid_generated_name_identifier, crm_ns["P2_has_type"], iremus_ns[ORCID_GENERATED_NAME_E55_UUID]))
    g.add((orcid_generated_name_identifier, crm_ns["P190_has_symbolic_content"], l(user_dict[user_uuid]["orcid_generated_name"])))

#####################################################################################################
# ECRITURE DU TTL
#####################################################################################################

g.serialize(destination=args.output_ttl)
old_g.serialize(destination=args.output_old_ttl)
