import argparse
from grist_helpers import records, patch_records
import json
from markdownify import markdownify as md
from pprint import pprint

GRIST_BASE = 'https://musicodb.sorbonne-universite.fr/api'

parser = argparse.ArgumentParser()
parser.add_argument('--grist_api_key')
parser.add_argument('--grist_doc_id')
parser.add_argument('--grist_table_id')
args = parser.parse_args()

grist_data = records(GRIST_BASE, args.grist_api_key, args.grist_doc_id, args.grist_table_id)
for row in grist_data['records']:
    i = 1
    for x in json.loads(row['fields']['fl']):
        patch_records(GRIST_BASE, args.grist_api_key, args.grist_doc_id, args.grist_table_id, {"records": [{"require": {"UUID": row['fields']['UUID']}, "fields": {
            f'Facteur_ou_luthier_{i}': x['facteurs_et_luthiers_id']['id']
        }}]})
        i += 1

    i = 1
    for x in json.loads(row['fields']['ins']):
        patch_records(GRIST_BASE, args.grist_api_key, args.grist_doc_id, args.grist_table_id, {"records": [{"require": {"UUID": row['fields']['UUID']}, "fields": {
            f'Instrument_{i}': x['instruments_id']['id']
        }}]})
        i += 1
