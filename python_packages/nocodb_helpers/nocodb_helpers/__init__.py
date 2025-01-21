import requests


def get_records(token, tableId, viewId, offset, limit):
    url = f"http://bases-iremus.huma-num.fr/api/v2/tables/{tableId}/records"
    querystring = {"offset": offset, "limit": limit}
    print("🌏", url, querystring)
    headers = {"xc-token": token}
    response = requests.request("GET", url, headers=headers, params=querystring)
    r = response.json()
    print("📦", r["pageInfo"])
    return r


def collect_records(token, tableId, viewId, limit):
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
