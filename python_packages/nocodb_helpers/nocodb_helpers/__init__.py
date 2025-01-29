import requests

TABLE_SHERLOCK_CORPUS = "mql7ygnmad05kq4"
BASE = "http://bases-iremus.huma-num.fr/api/v2"


def get_records(token, tableId, viewId, offset, limit):
    url = f"{BASE}/tables/{tableId}/records"
    querystring = {"offset": offset, "limit": limit}
    print("🌏", url, querystring)
    headers = {"xc-token": token}
    response = requests.request("GET", url, headers=headers, params=querystring)
    r = response.json()
    print("📦", r["pageInfo"])
    return r


def collect_records(token, tableId, viewId, limit, where):
    data = []
    offset = 0
    while True:
        r = get_records(token, tableId, viewId, offset, limit)
        data.extend(r["list"])
        stop = r["pageInfo"]["isLastPage"] == True
        if stop:
            break
        offset = offset + limit
    return data


def post(token, query_string, data):
    if query_string.startswith("/"):
        query_string = query_string[1:]
    url = f"{BASE}/{query_string}"
    headers = {"xc-token": token}
    response = requests.post(url, headers=headers, json=data)
    r = response.json()
    return r


CACHE_CORPORA_BY_NCID = {}


def get_corpus_uuid(token, ncid):
    if ncid not in CACHE_CORPORA_BY_NCID:
        url = f"{BASE}/tables/{TABLE_SHERLOCK_CORPUS}/records/{ncid}"
        print("🌏", url)
        r = requests.request("GET", url, headers={"xc-token": token})
        r = r.json()
        print("📦", r["rdfs:label"], r["UUID"], r["Type"])
        CACHE_CORPORA_BY_NCID[ncid] = r

    return CACHE_CORPORA_BY_NCID[ncid]
