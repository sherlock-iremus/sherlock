import argparse
from rdflib import Graph, Literal, Namespace, RDF, RDFS, URIRef
import requests
from sherlockcachemanagement import Cache

# SETUP

parser = argparse.ArgumentParser()
parser.add_argument("--output_ttl")
parser.add_argument("--cache")
parser.add_argument("--nocodb_token")
args = parser.parse_args()

cache = Cache(args.cache)

# LECTURE DES DONNÉES VIA L'API NOCODB

url = "http://bases-iremus.huma-num.fr/api/v2/tables/mon2365w42426wo/records"
querystring = {"offset": "0", "limit": "-1", "where": "", "viewId": "vwl6mpyalcbwep69"}
headers = {"xc-token": args.nocodb_token}
response = requests.request("GET", url, headers=headers, params=querystring)
r = response.json()

# GÉNÉRATION DU GRAPHE RDF

iremus_ns = Namespace("http://data-iremus.huma-num.fr/id/")
crm_ns = Namespace("http://www.cidoc-crm.org/cidoc-crm/")
g = Graph(base=str(iremus_ns))
g.bind("crm", crm_ns)

for item in r['list']:
    resource = URIRef(iremus_ns[item['UUID']])
    g.add((resource, RDF.type, crm_ns.E21_Person))
    g.add((resource, RDFS.label, Literal(item['rdfs:label'])))
    for k, v in item.items():
        if k.startswith('E42 '):
            k = k.replace('E42 ', '')
            if v:
                E42 = URIRef(iremus_ns[cache.get_uuid(['E21', item['UUID'], 'E42', k], True)])
                g.add((E42, RDF.type, crm_ns.E42_Identifier))
                g.add((resource, crm_ns.P1_is_identified_by, E42))
                g.add((E42, crm_ns.P190_has_symbolic_value, Literal(v)))

# ÉCRITURE DU FICHIER TURTLE

g.serialize(destination=args.output_ttl, format='turtle')

cache.bye()
