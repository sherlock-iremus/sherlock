import json
import os
from pprint import pprint
import requests

# curl -X GET https://opentheso.huma-num.fr/openapi/v1/thesaurus/dfa679e6-95f7-4480-a021-a3d4e1759790 -H 'accept: application/rdf+xml;charset=utf-8'
# curl -X GET https://opentheso.huma-num.fr/openapi/v1/thesaurus/th386 -H 'accept: application/rdf+xml;charset=utf-8'

if not os.path.exists("lieux.json"):
    r = requests.get("https://opentheso.huma-num.fr/openapi/v1/thesaurus/th386")
    with open("lieux.json", "w", encoding="utf-8") as json_file:
        json.dump(r.json(), json_file, indent=4, ensure_ascii=False)

with open("lieux.json", "r") as json_file:
    lieux = json.load(json_file)

for lieu in lieux:
    print(lieu)
