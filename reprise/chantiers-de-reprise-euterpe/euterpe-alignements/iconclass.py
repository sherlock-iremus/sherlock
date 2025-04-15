import gspread
import requests

SAMPLE_SPREADSHEET_ID = "1Zx4SLmDWx_iAMtyQI97RgOcyOc8-7musi3qfsEpwoVc"

gc = gspread.oauth(credentials_filename='credentials.json', authorized_user_filename='authorized_user.json')
sh = gc.open_by_key(SAMPLE_SPREADSHEET_ID)
worksheet = sh.worksheet("i:thèmes")

all_values = worksheet.get_all_values()
for l in range(1, len(all_values)):
    print(l)
    skos_prefLabel_fr = all_values[l][1]
    code = skos_prefLabel_fr.split("-")[0].strip()
    iconclass_uri = all_values[l][2].strip()
    notation = all_values[l][3].strip()

    if not iconclass_uri:
        uri = f"https://iconclass.org/{code}.rdf"
        response = requests.get(uri)
        if response.status_code == 200:
            print(uri)
            worksheet.update_cell(l + 1, 3, f"https://iconclass.org/{code}")

    if not notation and iconclass_uri:
        worksheet.update_cell(l + 1, 4, code)
