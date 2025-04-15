import argparse
from grist_helpers import records, patch_records, post_attachment
import os
from pprint import pprint
import requests

GRIST_BASE = 'https://musicodb.sorbonne-universite.fr/api'

parser = argparse.ArgumentParser()
parser.add_argument('--grist_api_key')
parser.add_argument('--grist_doc_id')
parser.add_argument('--grist_table_id')
parser.add_argument('--temp_folder')
args = parser.parse_args()

grist_data = records(GRIST_BASE, args.grist_api_key, args.grist_doc_id, args.grist_table_id)
for row in grist_data['records']:
    id = row['fields']['UUID']
    response = requests.get(f"https://data-iremus.huma-num.fr/pictures/mim-1860-1919/{id}.png")
    if response.status_code == 200:
        with open(os.path.join(args.temp_folder, f"{id}.png"), 'wb') as f:
            f.write(response.content)
            response = post_attachment(GRIST_BASE, args.grist_api_key, args.grist_doc_id, response.content)
            attachment_id = response[0]
            patch_records(
                GRIST_BASE,
                args.grist_api_key,
                args.grist_doc_id,
                args.grist_table_id,
                {"records": [{"require": {"UUID": row['fields']['UUID']}, "fields": {'Image_fichier': ["L", attachment_id]}}]}
            )
