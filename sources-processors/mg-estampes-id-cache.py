import argparse
from pathlib import Path
from sherlockcachemanagement import Cache

parser = argparse.ArgumentParser()
parser.add_argument("--cache")
parser.add_argument("--pictures")
args = parser.parse_args()

cache = Cache(args.cache)

files = Path(args.pictures).glob('*')
for file in files:
    print(file.stem)

cache.bye()
