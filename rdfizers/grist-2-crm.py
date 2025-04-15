import argparse
from grist_helpers import records
from rdflib import RDF, Literal, URIRef
from sherlock_helpers import make_graph, process_cell, serialize_graph, CRM, SHERLOCK_DATA

GRIST_BASE = 'https://musicodb.sorbonne-universite.fr/api'

graph = make_graph()

parser = argparse.ArgumentParser()
parser.add_argument('--grist_api_key')
parser.add_argument('--grist_doc_id')
parser.add_argument('--grist_table_id')
parser.add_argument('--output_ttl')
parser.add_argument('--e32_uuid')
parser.add_argument('--rdf_type')
args = parser.parse_args()

grist_data = records(GRIST_BASE, args.grist_api_key, args.grist_doc_id, args.grist_table_id)

for record in grist_data['records']:
    if 'UUID' in record['fields'].keys():
        subject = SHERLOCK_DATA[record['fields']['UUID']]
        for column_name, column_value in record['fields'].items():
            process_cell(subject, column_name, column_value, graph)
        graph.add((SHERLOCK_DATA[args.e32_uuid], CRM['P71_lists'], subject))
        graph.add((subject, RDF.type, URIRef(args.rdf_type)))

serialize_graph(graph, args.output_ttl)
