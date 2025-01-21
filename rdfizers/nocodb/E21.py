# TODO intégrer la contrainte du projet

import argparse
from rdflib import Literal, RDF, RDFS, URIRef
from sherlockcachemanagement import Cache
from nocodb_helpers import collect_records
from sherlock_helpers import make_graph, SHERLOCK_DATA, CRM
import sys

# MISE EN PLACE

parser = argparse.ArgumentParser()
parser.add_argument("--output_ttl")
parser.add_argument("--cache")
parser.add_argument("--nocodb_token")
args = parser.parse_args()

cache = Cache(args.cache)
g = make_graph()

# GO

data = collect_records(args.nocodb_token, "mon2365w42426wo", "vwl6mpyalcbwep69", 1000)

for item in data:
    print(item)
    sys.exit()
    resource = URIRef(SHERLOCK_DATA[item['UUID']])
    g.add((resource, RDF.type, CRM.E21_Person))
    g.add((resource, RDFS.label, Literal(item['rdfs:label'])))
    for k, v in item.items():
        if k.startswith('E42 '):
            k = k.replace('E42 ', '')
            if v:
                E42 = URIRef(SHERLOCK_DATA[cache.get_uuid(['E21', item['UUID'], 'E42', k], True)])
                g.add((E42, RDF.type, CRM.E42_Identifier))
                g.add((resource, CRM.P1_is_identified_by, E42))
                g.add((E42, SHERLOCK_DATA.P190_has_symbolic_value, Literal(v)))

# ÉCRITURE DU FICHIER TURTLE

g.serialize(destination=args.output_ttl, format='turtle')

cache.bye()
