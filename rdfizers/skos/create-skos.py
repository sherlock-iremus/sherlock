from rdflib import Graph, SKOS, RDF, RDFS, DCTERMS, Namespace, Literal

TITLE = "skos-test"

IRE = Namespace("http://data-iremus.huma-num.fr/id/")

g = Graph()
g.bind("ire", IRE)

g.add((IRE['f136ddbd-d0e2-41eb-880d-d9e61b8d8c84'], DCTERMS.title, Literal("caca")))

print(TITLE)
g.serialize(destination=f"{TITLE}.ttl", format="ttl")
