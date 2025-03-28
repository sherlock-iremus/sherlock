import argparse
from grist_helpers import records
from pprint import pprint
from rdflib import URIRef
from sherlock_helpers import make_graph, process_cell, serialize_graph, SHERLOCK_DATA

GRIST_BASE = 'https://musicodb.sorbonne-universite.fr/api'

graph = make_graph()

parser = argparse.ArgumentParser()
parser.add_argument('--grist_api_key')
parser.add_argument('--grist_doc_id')
parser.add_argument('--grist_table_id')
parser.add_argument('--output_ttl')
args = parser.parse_args()

grist_data = records(GRIST_BASE, args.grist_api_key, args.grist_doc_id, args.grist_table_id)

for record in grist_data['records']:
    if 'UUID' in record['fields'].keys():
        subject = SHERLOCK_DATA[record['fields']['UUID']]
        for column_name, column_value in record['fields'].items():
            process_cell(subject, column_name, column_value, graph)

serialize_graph(graph, args.output_ttl)
