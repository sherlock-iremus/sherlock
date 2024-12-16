import argparse
from pprint import pprint
import requests
import time
from sherlockcachemanagement import Cache
from directus_graphql_helpers import get_access_token, graphql_query

# SETUP

parser = argparse.ArgumentParser()
parser.add_argument('--cache')
parser.add_argument('--directus_email')
parser.add_argument('--directus_password')
parser.add_argument('--directus_url')
parser.add_argument('--nocodb_token')
args = parser.parse_args()

cache = Cache(args.cache)

# FROM DIRECTUS

query = '''
query {
    personnes(limit: -1) {
        id
        label
        definition
        note_historique
        ref_iremus
        ref_hortus
        alt_label_1
        alt_label_2
        alt_label_3
        alt_label_4
        alt_label_5
        alt_label_6
        alt_label_7
        alt_label_8
        alt_label_9
        alt_label_10
        alt_label_11
        data_bnf_alignement
        catalogue_bnf_alignement
        viaf_alignement
        isni_alignement
        versailles_alignement
        opentheso_id
    }
}'''

personnes = graphql_query(query, args.directus_email, args.directus_password, args.directus_url)["data"]["personnes"]
print(f"{len(personnes)} personnes dans Directus")
items = []
for personne in personnes:
    o = {
        "UUID": personne['id'],
        "rdfs:label": personne['label'],
        "prefLabel": personne['label'],
        "P3 définition": personne['definition'],
        "P3 note historique": personne['note_historique'],
        "E42 hortus": personne['ref_hortus'],
        "altLabel 1": personne['alt_label_1'],
        "altLabel 2": personne['alt_label_2'],
        "altLabel 3": personne['alt_label_3'],
        "altLabel 4": personne['alt_label_4'],
        "altLabel 5": personne['alt_label_5'],
        "altLabel 6": personne['alt_label_6'],
        "altLabel 7": personne['alt_label_7'],
        "altLabel 8": personne['alt_label_8'],
        "altLabel 9": personne['alt_label_9'],
        "altLabel 10": personne['alt_label_10'],
        "altLabel 11": personne['alt_label_11'],
        "E42 data.bnf.fr": personne["data_bnf_alignement"],
        "E42 catalogue.bnf.fr": personne["catalogue_bnf_alignement"],
        "E42 viaf": personne["viaf_alignement"],
        "E42 isni": personne["isni_alignement"],
        "E42 versailles": personne["versailles_alignement"],
        "E42 opentheso": personne["opentheso_id"]
    }
    items.append(o)

for item in items:
    headers = {"xc-token": args.nocodb_token}
    uuid = item['UUID']
    r = requests.get(f"http://bases-iremus.huma-num.fr/api/v2/tables/mon2365w42426wo/records?where=(UUID,eq,{uuid})", headers=headers)

    if 0 == len((r.json()['list'])):
        r = requests.post("http://bases-iremus.huma-num.fr/api/v2/tables/mon2365w42426wo/records", json=item, headers=headers)
        print("POSTED", r.json())
        id = r.json()['Id']
        r = requests.post(f"http://bases-iremus.huma-num.fr/api/v2/tables/mon2365w42426wo/links/c18g83p8hdnzqsm/records/{id}", json={"Id": 3}, headers=headers)
        print("LINKED", r.json())
    else:
        id = r.json()["list"][0]['Id']
        print("déjà là…", id)
        # item["Id"] = id
        # r = requests.patch("http://bases-iremus.huma-num.fr/api/v2/tables/mon2365w42426wo/records", json=item, headers=headers)
        # print("UPDATED", r.json())

# import argparse
# import json
# from rdflib import Graph, Namespace, RDF, SKOS, URIRef, URIRef, Literal
# import requests
# import yaml

# # sys.path.append(os.path.abspath(os.path.join('./sherlockcachemanagement', '')))
# from sherlockcachemanagement import Cache  # nopep8
# from directus_graphql_helpers import get_access_token, graphql_query

# ############################################################################################
# # SETUP
# ############################################################################################

# file = open(args.directus_secret)
# secret = yaml.full_load(file)
# cache = Cache(args.cache)

# crm_ns = Namespace('http://www.cidoc-crm.org/cidoc-crm/')
# sherlock_data = Namespace('http://data-iremus.huma-num.fr/id/')
# sherlock_ns = Namespace('http://data-iremus.huma-num.fr/ns/sherlock#')

# g = Graph(base=sherlock_data)

# g.bind('crm', crm_ns)
# g.bind('sherlock', sherlock_ns)

# ############################################################################################
# # RDF
# ############################################################################################

# print('Génération du graphe RDF…')

# for personne in result['data']['personnes']:
#     E21_uuid = personne['id']
#     E21_uri = sherlock_data[E21_uuid]
#     g.add((E21_uri, RDF.type, crm_ns['E21_Person']))

#     # Rattachement au E32
#     g.add((URIRef('81366968-0fc8-43f6-9a32-9609c19a33c0'), crm_ns['P71_lists'], E21_uri))

#     # skos:prefLabel
#     g.add((E21_uri, SKOS.prefLabel, Literal(personne['label'])))

#     # E41 prefLabel
#     E41_uri = sherlock_data[cache.get_uuid(['personnes', E21_uuid, 'E41_pref'], True)]
#     g.add((E21_uri, crm_ns['P1_is_identified_by'], E41_uri))
#     g.add((E41_uri, RDF.type, crm_ns['E41_Appellation']))
#     g.add((E41_uri, crm_ns['P190_has_symbolic_content'], Literal(personne['label'])))
#     g.add((E41_uri, crm_ns['P2_has_type'], sherlock_data['3cf0c743-ee9b-4dfc-8133-7dd383a1b6be']))  # Preferred Appellation

#     # altLabels
#     for label_index in range(1, 12):
#         clef = 'alt_label_' + str(label_index)
#         altlabel = personne[clef]
#         if altlabel:
#             E41_alt_uri = sherlock_data[cache.get_uuid(['personnes', E21_uuid, 'E41_alt', altlabel], True)]
#             g.add((E41_alt_uri, RDF.type, crm_ns['E41_Appellation']))
#             g.add((E41_alt_uri, crm_ns['P190_has_symbolic_content'], Literal(altlabel)))
#             g.add((E21_uri, crm_ns['P1_is_identified_by'], E41_alt_uri))
#             g.add((E41_alt_uri, crm_ns['P2_has_type'], sherlock_data['70589b95-4156-431e-a58a-818af6dc795a']))  # Alternative Appellation

#     # notes
#     if personne['definition'] != None:
#         g.add((E21_uri, sherlock_ns['definition'], Literal(personne['definition'])))
#     if personne['note_historique'] != None:
#         g.add((E21_uri, crm_ns['P3_has_note'], Literal(personne['note_historique'])))

#     # E42
#     def linkE42(champ, E55_uuid):
#         if personne[champ]:
#             E42_alignement = sherlock_data[cache.get_uuid(['personnes', E21_uuid, 'E42', champ], True)]
#             g.add((E21_uri, crm_ns['P1_is_identified_by'], E42_alignement))
#             g.add((E42_alignement, RDF.type, crm_ns['E42_Identifier']))
#             g.add((E42_alignement, crm_ns['P2_has_type'], sherlock_data[E55_uuid]))
#             g.add((E42_alignement, crm_ns['P190_has_symbolic_content'], Literal(personne[champ])))

#     linkE42('versailles_alignement', 'f316e967-0a73-442a-a6b9-e1de5171f247')
#     linkE42('data_bnf_alignement', 'df9f27d6-b08b-46e6-ad67-202259c4cdbd')
#     linkE42('catalogue_bnf_alignement', '59835932-52aa-4a19-ac6e-916d2a4b9228')
#     linkE42('isni_alignement', '49729025-e609-46ed-a749-5f3ae53dbfbe')
#     linkE42('ref_hortus', '6703d6e9-bd46-4c7d-865e-5e5a4c0a549f')
#     linkE42('ref_iremus', '6e2effb0-1dd6-4693-a9bb-f3ceb7dfe6fc')
#     linkE42('viaf_alignement', 'bae39954-9d0c-40e4-8258-c1b6dfd0a4a4')
