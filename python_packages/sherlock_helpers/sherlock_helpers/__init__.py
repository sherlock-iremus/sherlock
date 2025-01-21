from rdflib import Graph, Namespace

SHERLOCK_DATA = Namespace("http://data-iremus.huma-num.fr/id/")
CRM = Namespace("http://www.cidoc-crm.org/cidoc-crm/")


def make_graph():
    g = Graph(base=str(SHERLOCK_DATA))
    g.bind("crm", CRM)
    g.bind("sherlockdata", SHERLOCK_DATA)
    return g
