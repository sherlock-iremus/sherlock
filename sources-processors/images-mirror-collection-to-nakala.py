############################################################################################
# Written for NAKALA 3.11.1
############################################################################################

import argparse
import json
from rdflib import Graph, Namespace
from datetime import datetime
import requests
from pathlib import Path
from pprint import pprint
import os
from dotenv import load_dotenv
import sys

from sherlockcachemanagement import Cache

############################################################################################
# SETUP
############################################################################################

load_dotenv(dotenv_path=Path('.') / '.env')

parser = argparse.ArgumentParser()
parser.add_argument("--pictures")
parser.add_argument('--collection')
parser.add_argument('--cache')
args = parser.parse_args()

cache = Cache(args.cache)

iremus_ns = Namespace("http://data-iremus.huma-num.fr/id/")
nakala_ns = Namespace("http://nakala.fr/terms#")

g = Graph(base=str(iremus_ns))

g.bind("iremus", iremus_ns)
g.bind("nakala", nakala_ns)

############################################################################################
# NAKALA API MIRROR
############################################################################################

files = Path(args.pictures).glob('*')
api_key = os.getenv("NAKALA_API_KEY")
api_url = os.getenv("NAKALA_API_URL")
purl_image_datatype = 'http://purl.org/coar/resource_type/c_c513'

# on itère sur les identifiants métiers des images, à savoir le nom du fichier.
for file in files:
    e36_uuid = cache.get_uuid([file.stem, 'E36_uuid'], True)

    print(api_url)
    print(f"{api_url}/datas/uploads")

    # on upload l'image uniquement si elle n'a pas encore été ajoutée
    # if ("nakala_doi" not in cache.cache[file.stem]):
    # with file.open('rb') as f:
    #     # upload image
    #     postFileResponse = requests.post(
    #         url=f"{api_url}/datas/uploads",
    #         headers={
    #             'accept': 'application/json',
    #             'X-API-KEY': api_key
    #         },
    #         files={'file': f},
    #     )
    #
    # sha1 = postFileResponse.json()['sha1']
    # # upload image data
    # postDataResponse = requests.post(
    #     url=f"{api_url}/datas",
    #     headers={
    #         'accept': 'application/json',
    #         'Content-Type': 'application/json',
    #         'X-API-KEY': api_key
    #     },
    #     data=json.dumps({
    #         'status': 'published',
    #         'collectionsIds': [args.collection],
    #         'files': [{
    #             'name': file.stem,
    #             'sha1': sha1
    #         }],
    #         'metas': [
    #             {
    #                 'value': file.stem,
    #                 'propertyUri': nakala_ns['title'],
    #                 'typeUri': "http://www.w3.org/2001/XMLSchema#string"
    #             },
    #             {
    #                 'value': purl_image_datatype,
    #                 'propertyUri': nakala_ns['type'],
    #                 'typeUri': "http://www.w3.org/2001/XMLSchema#anyURI"
    #             },
    #             {
    #                 'value': iremus_ns[e36_uuid],
    #                 'propertyUri': 'http://purl.org/dc/terms/identifier',
    #                 'typeUri': "http://www.w3.org/2001/XMLSchema#anyURI"
    #             },
    #             {
    #                 # Si on connaît l'auteur, remplir sous la forme : value : {'givenname': '', surname: '', orcid: ''}
    #                 'propertyUri': nakala_ns['creator'],
    #                 'typeUri': "http://www.w3.org/2001/XMLSchema#anyURI"
    #             },
    #             {
    #                 'value': datetime.now().strftime("%Y-%m-%d"),
    #                 'propertyUri': nakala_ns['created'],
    #                 'typeUri': "http://www.w3.org/2001/XMLSchema#string"
    #             },
    #             {
    #                 'value': 'PDM',  # licence code : https://apitest.nakala.fr/vocabularies/licenses
    #                 'propertyUri': nakala_ns['license'],
    #                 'typeUri': "http://www.w3.org/2001/XMLSchema#string"
    #             },
    #         ],
    #     }),
    # )

    # postDataResponse = postDataResponse.json()

    # if postDataResponse['code'] == 201:
    #     cache.cache[file.stem]["nakala_doi"] = postDataResponse['payload']['id']
    #     print('published : ', file.stem)
    # else:
    #     pprint(postDataResponse)

cache.bye()
