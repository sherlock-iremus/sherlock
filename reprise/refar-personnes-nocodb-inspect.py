import argparse
from bs4 import BeautifulSoup
import html
import re
import requests

from nocodb_helpers import collect_records, get_corpus_uuid, post

parser = argparse.ArgumentParser()
parser.add_argument('--nocodb_token')
args = parser.parse_args()
data = collect_records(args.nocodb_token, 'mon2365w42426wo', 'vwl6mpyalcbwep69', 1000, 'where=(Corpus,eq,2)')


def clean(s):
    s = html.unescape(s)
    soup = BeautifulSoup(s, 'html.parser')
    for tag in soup.find_all():
        if tag.name == 'span':
            tag.unwrap()
    return str(soup)


nd = 0
nnh = 0
for personne in data:
    d = personne['P3 définition']
    nh = personne['P3 note historique']

    if d and 'MG-' in d:
        nd = nd + 1
        d = clean(d)
        for mg in re.findall("MG-([-_0-9]+)", d):
            u = f"https://raw.githubusercontent.com/OBVIL/mercure-galant/refs/heads/gh-pages/xml/MG-{mg}.xml"
            x = requests.get(u)
            print(u, mg, x.status_code)
    if nh and 'MG-' in nh:
        nnh = nnh + 1
        nh = clean(nh)
        for mg in re.findall("MG-([-_0-9]+)", nh):
            u = f"https://raw.githubusercontent.com/OBVIL/mercure-galant/refs/heads/gh-pages/xml/MG-{mg}.xml"
            x = requests.get(u)
            print(u, mg, x.status_code)

print(len(data))
