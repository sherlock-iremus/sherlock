import json
import gspread
import re
import requests

SAMPLE_SPREADSHEET_ID = "1Zx4SLmDWx_iAMtyQI97RgOcyOc8-7musi3qfsEpwoVc"

gc = gspread.oauth(credentials_filename='credentials.json', authorized_user_filename='authorized_user.json')
sh = gc.open_by_key(SAMPLE_SPREADSHEET_ID)
worksheet = sh.worksheet("i:instruments de musique")

hs_registry = {}

with open('HornbostelAndSachs.json') as f:
    hs = json.load(f)
    for _ in hs:
        try:
            notation = _["http://www.w3.org/2004/02/skos/core#notation"][0]['@value']
            hs_registry[notation] = _
        except:
            pass

all_values = worksheet.get_all_values()
for l in range(1, len(all_values)):
    skos_prefLabel_fr = all_values[l][1]
    code = re.findall("([0-9\.-]+)", skos_prefLabel_fr)[0]
    if code in hs_registry:
        if not all_values[l][2] or not all_values[l][3]:
            worksheet.update_cell(l + 1, 3, hs_registry[code]["@id"])
            worksheet.update_cell(l + 1, 4, code)
            print(l, code, hs_registry[code]["@id"])
        if not all_values[l][4] and "http://www.w3.org/2004/02/skos/core#exactMatch" in hs_registry[code]:
            exact_matches = [em["@id"] for em in hs_registry[code]["http://www.w3.org/2004/02/skos/core#exactMatch"]]
            worksheet.update_cell(l + 1, 5, " \n".join(exact_matches))
    else:
        print(code)
