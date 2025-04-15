from rdflib import DCTERMS, Graph, Literal, Namespace, RDF, RDFS, SKOS, URIRef

iremus_ns = Namespace("http://data-iremus.huma-num.fr/id/")
g = Graph(base=str(iremus_ns))

cs = URIRef("d1e55d5f-43c2-4e11-ae56-503ecf31f638")
g.add((cs, DCTERMS.title, Literal("Types de notations musicales")))
g.add((cs, RDF.type, SKOS.ConceptScheme))

data = [
    ["014f7607-d6c6-4528-9749-c025b8d4aee2", "musique écrite avec partie de chant", 18992],
    ["e124005a-ab18-4917-98c2-45d5ce19c2a2", "notation musicale et textuelle", 18993],
    ["e4264bd0-b0e1-43e0-ba10-55cf5d3dbad2", "tablature avec partie vocale", 18994],
    ["a4c1c0f7-9910-4e74-983f-7937d18b5f1d", "tablature", 18996],
    ["3f3c49d5-c4a0-4751-af59-a96b8828082d", "notation lisible", 18999],
    ["05bc6354-dec2-4c0a-95a6-e15737c16c46", "oeuvre musicale, pédagogique ou théorique identifiée", 19000],
    ["95d1c57a-ad96-46be-b100-4227e55b51a9", "texte chanté lisible", 19001],
    ["3920dcd2-2d11-4b21-bd3b-f41cdf6ce57d", "titre de l'oeuvre ou de l'extrait", 19002],
    ["30e66596-e097-4d3e-b696-4fc9bc8650e5", "musique écrite avec partie de chant", 19038],
    ["a138195f-3333-44d6-9d2c-3dfe191efdbb", "musique écrite", 19284],
    ["e0a0f5b0-4eac-44b3-8535-f845fdacc1e8", "notation illisible", 19614],
    ["d744b799-75cc-402f-b19c-318031bf907b", "oeuvre musicale non identifiée", 19618],
    ["ce86cdf2-368f-478a-9112-2b528e0097d0", "nom de l'auteur", 19619],
    ["e737d9d8-98c5-4078-b757-65d213ec3ccd", "tablature avec partie instrumentale", 19620],
    ["de2b497f-8631-4e83-aeff-0fc0649b36c4", "livre de musique", 19621],
    ["a3c6c47b-0a95-4342-aa8a-6da0e827cbe5", "livre de musique imprimé", 19622],
    ["9d46373c-7583-4e46-a8bb-e4dc9a225182", "livre de musique manuscrit", 19623],
    ["5d2daca6-6cdf-4374-adfa-c6b4f2313541", "format à l'italienne ~ paysage ~ oblong", 19624],
    ["fd33e9eb-699a-456f-a915-a79d80f59838", "format à la française ~ portrait", 19625],
    ["86c0c549-d9c4-44bc-af6d-5ac292b734b5", "livre de choeur", 19626],
    ["f8f24e20-cb85-4a53-8075-c0280b9c5d9b", "rouleau", 19627],
    ["acde1d46-3f0f-465e-a4ed-3133cb94bfad", "partition d'orchestre", 19628],
    ["1db5b55e-1404-419f-8580-609cd86a6a23", "partie séparée", 19629],
    ["169f3d3a-e121-4f12-891c-9df559938133", "partie vocale", 19630],
    ["b4736522-04b6-432c-bb12-c3804409c369", "partie instrumentale", 19631],
    ["d5d18e5a-0468-4cdf-96aa-85f6d6fb825c", "texte chanté illisible", 19636],
    ["9143db2a-3d5b-4890-90bb-5b12150043ac", "musique vocale", 19637],
    ["34d97920-a75c-47d1-8516-3039b7e6058a", "musique instrumentale", 19638],
    ["5a73d855-ff36-4ec0-b58b-1820620d6a9c", "plain-chant", 19639],
    ["643224e5-f29a-458e-b5a4-5f6c5ddeb5a0", "feuille de musique ~ feuille volante", 19994],
    ["8877016c-630b-4f17-a8c6-113800e2ae14", "phylactère", 19995],
    ["be628bbf-4c1a-4160-b733-3be8db3cd432", "oeuvre musicale / extrait d'oeuvre musicale", 19996],
    ["2cb928d9-21ec-42aa-a7e9-98b591a39be2", "notation figurée", 19999],
    ["bc9aae21-e699-4868-a7a3-23b2a0401431", "caractéristiques matérielles", 20000],
]

for item in data:
    c = URIRef(item[0])

    g.add((c, SKOS.inScheme, cs))
    g.add((cs, SKOS.hasTopConcept, c))

    g.add((c, RDF.type, SKOS.Concept))
    g.add((c, SKOS.prefLabel, Literal(item[1])))
    g.add((c, SKOS.historyNote, Literal(item[2])))

g.serialize(destination="/Users/amleth/Desktop/euterpe/typesdenotationsmusicales.ttl", format='turtle')
