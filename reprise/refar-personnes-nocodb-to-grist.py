import argparse
from grist_helpers import columns, put_record
import json
from markdownify import markdownify as md
from nocodb_helpers import collect_records
from pathlib import Path
from pprint import pprint
import uuid

parser = argparse.ArgumentParser()
parser.add_argument("--nocodb_token")
parser.add_argument("--grist_api_key")
args = parser.parse_args()

JSON_CACHE = "refar-personnes-nocodb-data.json"
GRIST_BASE = "https://musicodb.sorbonne-universite.fr/api"

if not Path(JSON_CACHE).is_file():
    data = collect_records(args.nocodb_token, "mon2365w42426wo", "vwl6mpyalcbwep69", 1000, "")
    json_object = json.dumps(data, indent=4)
    with open(JSON_CACHE, "w") as f:
        f.write(json_object)

else:
    with open(JSON_CACHE, "r") as f:
        data = json.load(f)

i = 1
for x in data:
    if x['Corpus'][0]['rdfs:label'] == 'Personnes du ReFAR':
        print(i)
        fields = {"skos_prefLabel": x['rdfs:label']}

        if x["P3 définition"]:
            fields["P3_definition"] = md(x["P3 définition"])
        if x["P3 note historique"]:
            fields["P3_note_historique"] = md(x["P3 note historique"])
        if x["E42 opentheso"]:
            fields["E42_opentheso"] = x["E42 opentheso"]
        if x["E42 catalogue.bnf.fr"]:
            fields["E42_catalogue_bnf_fr"] = x["E42 catalogue.bnf.fr"].replace('<p>', '').replace('</p>', '')
        if x["E42 data.bnf.fr"]:
            fields["E42_data_bnf_fr"] = x["E42 data.bnf.fr"].replace('<p>', '').replace('</p>', '')
        if x["E42 grove"]:
            fields["E42_grove"] = x["E42 grove"]
        if x["E42 mgg"]:
            fields["E42_mgg"] = x["E42 mgg"]
        if x["E42 isni"]:
            fields["E42_isni"] = x["E42 isni"].replace('<p>', '').replace('</p>', '')
        if x["E42 viaf"]:
            fields["E42_viaf"] = x["E42 viaf"].replace('<p>', '').replace('</p>', '')
        if x["E42 rism"]:
            fields["E42_rism"] = x["E42 rism"]
        if x["E42 versailles"]:
            fields["E42_versailles"] = x["E42 versailles"].replace('<p>', '').replace('</p>', '')
        if x["E42 wikidata"]:
            fields["E42_wikidata"] = x["E42 wikidata"]
        if x["skos:altLabel 1"]:
            fields["skos_altLabel"] = x["skos:altLabel 1"]
        if x["skos:altLabel 2"]:
            fields["skos_altLabel2"] = x["skos:altLabel 2"]
        if x["skos:altLabel 3"]:
            fields["skos_altLabel3"] = x["skos:altLabel 3"]
        if x["skos:altLabel 4"]:
            fields["skos_altLabel4"] = x["skos:altLabel 4"]
        if x["skos:altLabel 5"]:
            fields["skos_altLabel5"] = x["skos:altLabel 5"]
        if x["skos:altLabel 6"]:
            fields["skos_altLabel6"] = x["skos:altLabel 6"]
        if x["skos:altLabel 7"]:
            fields["skos_altLabel7"] = x["skos:altLabel 7"]
        if x["skos:altLabel 8"]:
            fields["skos_altLabel8"] = x["skos:altLabel 8"]
        if x["skos:altLabel 9"]:
            fields["skos_altLabel9"] = x["skos:altLabel 9"]
        if x["skos:altLabel 10"]:
            fields["skos_altLabel10"] = x["skos:altLabel 10"]
        if x["skos:altLabel 11"]:
            fields["skos_altLabel11"] = x["skos:altLabel 11"]

        pprint(put_record(GRIST_BASE, args.grist_api_key, "4NmEJA4z9EUBK2vYu2epCi", 1, {"records": [{"require": {"UUID": x['UUID']}, "fields": fields}]}))

        i += 1
