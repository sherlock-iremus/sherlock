import argparse
import dload
from pathlib import Path
from pprint import pprint
from sherlockcachemanagement import Cache

parser = argparse.ArgumentParser()
parser.add_argument("--cache")
args = parser.parse_args()

cache = Cache(args.cache)

url = 'https://api.github.com/repos/sherlock-iremus/mercure-galant-estampes/git/trees/main?recursive=1'
j = dload.json(url)
for file in j["tree"]:
    if file["path"] != ".gitattributes":
        clef_métier = Path(file["path"]).stem
        uuid = cache.get_uuid([clef_métier, 'sherlock_uuid'], True)
        cache.set_kv([clef_métier, 'sha'], file['sha'])

cache.bye()
