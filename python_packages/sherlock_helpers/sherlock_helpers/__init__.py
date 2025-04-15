from rdflib import Graph, Literal, Namespace, RDF, RDFS, SKOS, URIRef
import re
import uuid

SHERLOCK_DATA = Namespace("http://data-iremus.huma-num.fr/id/")
CRM = Namespace("http://www.cidoc-crm.org/cidoc-crm/")


def make_graph():
    g = Graph(base=str(SHERLOCK_DATA))
    g.bind("crm", CRM)
    g.bind("sherlockdata", SHERLOCK_DATA)
    return g


def serialize_graph(g, file):
    g.serialize(destination=file, encoding='utf-8')


E42_types = {
    "catalogue_bnf_fr": "59835932-52aa-4a19-ac6e-916d2a4b9228",
    "data_bnf_fr": "df9f27d6-b08b-46e6-ad67-202259c4cdbd",
    "grove": "179c61b8-4215-4644-bb52-ad9fe2094da1",
    "isni": "49729025-e609-46ed-a749-5f3ae53dbfbe",
    "mgg": "5d535add-e1bc-421d-b4f3-190dbd788fd3",
    "opentheso": "c7465286-fe10-4b2a-a764-c2a25ed3c63f",
    "rism": "c3c91ea4-e5eb-4c22-9727-923564355d2e",
    "versailles": "c8e6991d-46cf-401a-9218-4dbda6abb805",
    "viaf": "bae39954-9d0c-40e4-8258-c1b6dfd0a4a4",
    "wikidata": "d1106e67-f0b7-4eb6-a4dd-54f39e33559a"
}

P3_types = {
    "definition": "c5402ae4-4ae9-48a1-86ed-c13de0c97d53",
    "définition": "c5402ae4-4ae9-48a1-86ed-c13de0c97d53",
    "note_historique": "60e0538c-c548-4e0a-8456-4bd654acb59d"
}


def remove_trailing_integers(s):
    return re.sub(r'\d+$', '', s)


def make_P3(subject, column_value, graph, P3_type):
    pc = URIRef(str(uuid.uuid4()))
    graph.add((pc, RDF.type, CRM['PC3_has_note']))
    graph.add((pc, CRM['P01_has_domain'], subject))
    graph.add((pc, CRM['P03_has_range_literal'], Literal(column_value)))
    graph.add((pc, CRM['P3.1_has_type'], SHERLOCK_DATA[P3_type]))
    return True


def make_E42(subject, column_value, graph, E42_type):
    e42 = URIRef(str(uuid.uuid4()))
    graph.add((subject, CRM['P1_is_identified_by'], e42))
    graph.add((e42, RDF.type, CRM['E42_Identifier']))
    graph.add((e42, CRM['P2_has_type'], SHERLOCK_DATA[E42_type]))
    if column_value.startswith('http'):
        graph.add((e42, CRM['P190_has_symbolic_content'], URIRef(column_value)))
    else:
        graph.add((e42, CRM['P190_has_symbolic_content'], Literal(column_value)))
    return True


def process_cell(subject, column_name, column_value, graph):
    column_name.strip().lower()
    if column_value:
        column_value.strip()
    if not column_value:
        return False

    x = re.match('skos_prefLabel', column_name)
    if x:
        graph.add((subject, SKOS.prefLabel, Literal(column_value)))
        return True

    x = re.match('skos_altLabel\d*', column_name)
    if x:
        graph.add((subject, SKOS.altLabel, Literal(column_value)))
        return True

    x = re.match('P3_.*', column_name)
    if x:
        return make_P3(subject, column_value, graph, P3_types[remove_trailing_integers(column_name.replace('P3_', ''))])

    x = re.match('E42_.*', column_name)
    if x:
        return make_E42(subject, column_value, graph, E42_types[remove_trailing_integers(column_name.replace('E42_', ''))])

    return False
