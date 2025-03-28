import requests

session = requests.Session()
session.verify = False


def get(base, api_key, path):
    return session.get(
        f"{base}{path}",
        headers={
            "Authorization": f"Bearer {api_key}",
            "Content-Type": "application/json"
        },
        verify=False).json()


def orgs(base, api_key):
    return get(base, api_key, "/orgs")


def orgs_iremus(base, api_key):
    return get(base, api_key, "/orgs/iremus")


def workspace(base, api_key, id):
    return get(base, api_key, f"/workspaces/{id}")


def records(base, api_key, doc_id, table_id):
    return get(base, api_key, f"/docs/{doc_id}/tables/{table_id}/records")


def put_record(base, api_key, doc_id, table_id, data):
    return session.put(
        f"{base}/docs/{doc_id}/tables/{table_id}/records",
        headers={
            "Authorization": f"Bearer {api_key}",
            "Content-Type": "application/json"
        },
        json=data,
        verify=False
    ).json()


def columns(base, api_key, doc_id, table_id):
    return get(base, api_key, f"/docs/{doc_id}/tables/{table_id}/columns")
