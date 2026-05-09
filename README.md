# `📡 SHERLOCK`

<br>
<br>
<p align="center">
    <img src="sherlock.png" alt="image" />
</p>
<br>
<br>

SHERLOCK est un programme de recherche/ingénierie porté par
l'[Institut de Recherche en Musicologie](https://www.iremus.cnrs.fr/) et le
[Consortium Musica*](https://musica.hypotheses.org/) de
l'[IR* Huma-Num](https://www.huma-num.fr/).

SHERLOCK propose une chaîne de traitement des données de la recherche sur le
patrimoine (en particulier, musical) autour de l'ontologie standard
[CIDOC CRM](https://cidoc-crm.org/), accompagnant le chercheurs des premiers
temps de son projet jusqu'à la publication et la valorisation de ses données
dans le contexte du Web sémantique. Il articule : 💾 des outils gestion de
données durables existants (Grist, Nakala), 🧪 des méthodologies et des
standards de gestion des données de la recherche (IIIF, RDF, SKOS, TEI, MEI…) et
📡 le développement d'interfaces Web d'exploration.

## `🪷 Objectifs et philosophie`

- 🧠 Produire des modèles conceptuels adaptés à la complexité et la diversité
  des données musicologiques.
- 💾 Proposer un cadre technique reposant sur des outils durables pour
  accompagner les chercheurs dans la gestion du cycle de vie de leurs données.
- 🛠️ Équiper les chercheurs avec des outils de saisie de données collaboratifs,
  dont l'ergonomie est proche de leurs pratiques ordinaires (tableurs).
- ⚖️ Publier et pérenniser les données des projets de recherche en respectant
  les principes du [FAIR](https://www.go-fair.org/fair-principles/) et du
  [LOD 5⭐](https://5stardata.info/fr/) attendus par nos tutelles et par les
  organismes financeurs de la recherche, notamment depuis la loi pour une
  République numérique de 2016.
- 🪴 Rendre accessible la production et la publication de données sémantiques.
  Faire monter en compétence autour de ces questions. À l'issu des formations
  sur le Web sémantique, les chercheurs qui y assistent ressortent souvent en
  disant : _« Le Web sémantique et les ontologies c’est très intéressant, mais
  comment je fais concrètement pour produire des données conformes ? »_.

## `🌄 Obstacles levés`

- 😭 Il n'existe pas d'outils de saisie de données RDF/CIDOC CRM suffisamment ergonomiques et proches des pratiques ordinaires des chercheurs.
  - ✅ Nous nous appuyons sur l'outil *nocode* [Grist](https://www.getgrist.com/) — qui propose une interface de type tableur tout en ajoutant la collaboration temps-réel, un système de droits, la construction de formulaires personnalisés et une API REST complète — et le complétons par un [outil de génération de données RDF/CIDOC CRM reposant sur des règles de *mapping* simples](https://github.com/sherlock-iremus/sherlock-grist-to-crm).
- 🏷️ Les outils de gestion des données sont dissociés des outils de gestion des thésaurus.
  - ✅ Nous avons développé un [plugin Grist](https://github.com/sherlock-iremus/sherlock-grist-opentheso-plugin) se connectant à [Opentheso](https://opentheso.huma-num.fr/) pour indexer les données tabulaires.
- 🪎 Les outils de gestion du cycle de vie des fichiers sont dissociés des outils assurant leur catalogage scientifique.
  - ✅ Nous avons développé un [outil de publication par lots dans Nakala à partir de Grist](https://github.com/sherlock-iremus/sherlock-deno).

<!--
- des réflexions méthodologiques et techniques autour de l'usage du CIDOC CRM
  comme ontologie centrale dans un système d'information scientifique
  collaboratif :
- des scénarios de mise en œuvre d'applications existantes comme Grist, Nakala
  ou Opentheso
  (,
  [sherlock-grist-opentheso-plugin](https://github.com/sherlock-iremus/sherlock-grist-opentheso-plugin))
- le développement de nouvelles
  applications ([sherlock-app](https://github.com/sherlock-iremus/sherlock-app))
- le développement de scripts de transformation de données
  ([grist-nakala](https://github.com/sherlock-iremus/grist-nakala))
- des
  [données musicologiques](https://github.com/sherlock-iremus/iremus-sherlock-data-ttl)
  sémantiques modélisées avec le CIDOC CRM

  https://github.com/Amleth/consortium-musica2-gt2-ontologies/tree/main/guide
  
  -->

## `🍱 Schéma technique d'ensemble`

```mermaid
    flowchart TB
    
    subgraph  
    koda[📦<br>Stockage de fichiers<br><br>Gitlab CNRS<br><a href="https://src.koda.cnrs.fr/">src.koda.cnrs.fr</a>]
    nakala[🪎<br>Pérennisation de fichiers avec des DOI<br><br>🖼️<br>Serveur IIIF<br><br> Nakala<br><a href="https://www.nakala.fr/">www.nakala.fr</a>]
    hnot[🗂️<br>Gestion de thésaurus<br><br>Opentheso<br><a href="https://opentheso.huma-num.fr/">opentheso.huma-num.fr</a>]
    end
    
    grist[🗃️<br>Saisie des données dans Grist<br>+<br><a href="https://github.com/sherlock-iremus/sherlock-grist-to-crm/blob/main/doc/mapping.md">Conventions de mapping</a>]
    sdnakala[🦕<br>Scripts de publication par lots vers Nakala de données cataloguées dans Grist<br><a href="https://github.com/sherlock-iremus/sherlock-deno">github</a>]
    gop[🎋<br>Plugin Grist pour indexer les données avec des thésaurus Opentheso<br><a href="https://github.com/sherlock-iremus/sherlock-grist-opentheso-plugin">github</a>]
    scripts[🧠<br>Conversion automatique des données tabulaires en données RDF/CIDOC CRM<br><a href="https://github.com/sherlock-iremus/sherlock-grist-to-crm">github</a>]
    sparql[🌐<br>Mise à disposition des données RDF via un SPARQL endpoint<br><a href="https://data-iremus.huma-num.fr/sparql">https://data-iremus.huma-num.fr/sparql</a>]
    sherlock[⛩️<br>Publication/exploration des données dans l'application Web Sherlock]
    tonalities[🎼<br>Tonalities : annotation collaborative de partitions encodées MEI avec des ontologies<br><br><a href="https://tonalities.gitpages.huma-num.fr/start/">tonalities.gitpages.huma-num.fr</a>]

    grist e1@==>|API REST| scripts
    scripts e2@==>|Fichiers RDF| sparql
    sparql e3@==>|SPARQL endpoint public| sherlock
    sparql e4@===>|API REST authentifiée| tonalities 
    tonalities e5@===>|API REST authentifiée| sparql


    e1@{ animate: true }
    e2@{ animate: true }
    e3@{ animate: true }
    e4@{ animate: true }
    e5@{ animate: true }
    
    grist ---> koda
    grist === gop ---> hnot
    grist --- sdnakala ---> nakala
```

## `⛩️ Quelques vues de l'application Web SHERLOCK`

- [Identité d'une ressource](https://data-iremus.huma-num.fr/sherlock/projects/mercure-galant/livraisons/1672-01)
- [Structure d'une œuvre + recherche plein-texte dans les composants](https://data-iremus.huma-num.fr/sherlock/projects/mercure-galant/livraisons/1672-01)
- [Contenu d'un périodique](https://data-iremus.huma-num.fr/sherlock/projects/mercure-galant/livraisons)
- [Annotations (E13) sur une ressource](https://data-iremus.huma-num.fr/sherlock/id/355f3c4d-7b7c-472f-9b66-974a819f9eaf)
- [Ressources liées](https://data-iremus.huma-num.fr/sherlock/id/355f3c4d-7b7c-472f-9b66-974a819f9eaf)
- Visionneuses simples :
  - [TEI](https://data-iremus.huma-num.fr/sherlock/projects/mercure-galant/articles/1677-05_211)
  - [MEI](https://data-iremus.huma-num.fr/sherlock/?resource=https://www.nakala.fr/10.34847/nkl.48576349)
  - [image](https://data-iremus.huma-num.fr/sherlock/id/f28b62fc-d686-4c78-a205-015e5d7dc4b6)
- [Recherche plein texte multi-champs dans les ressources d'une collection](https://data-iremus.huma-num.fr/sherlock/projects/aam)
- [Spécification du futur composant de recherche de ressources par descripteurs](https://github.com/sherlock-iremus/sherlock/blob/main/spec_app_search.md)

<!-- https://yasgui.triply.cc/#query=SELECT%20%3Fgraph%20(COUNT(*)%20AS%20%3Ftriples)%0AWHERE%20%7B%0A%20%20GRAPH%20%3Fgraph%20%7B%0A%20%20%20%20%3Fs%20%3Fp%20%3Fo%20.%0A%20%20%7D%0A%7D%0AGROUP%20BY%20%3Fgraph%0AORDER%20BY%20DESC(%3Ftriples)&endpoint=https%3A%2F%2Fdata-iremus.huma-num.fr%2Fsparql&requestMethod=POST&tabTitle=Query&headers=%7B%7D&contentTypeConstruct=application%2Fn-triples%2C*%2F*%3Bq%3D0.9&contentTypeSelect=application%2Fsparql-results%2Bjson%2C*%2F*%3Bq%3D0.9&outputFormat=table -->

## `📡 Communications significatives`

- ⛩️ Thomas Bottini. Modéliser les données de la recherche avec le CIDOC CRM.
  Journée d'étude _« Partager les données des SHS sur le Web sémantique »_,
  Consortiums Huma-Num Musica* et MASA, Mar 2026, Paris, France.
  [⟨hal-05548446⟩](https://hal.science/hal-05548446v1)
- 🧠 Thomas Bottini. Le CIDOC-CRM pour capter l'activité critique sur les
  sources en musicologie. _Rencontres de la musicologie numérique_, Consortium
  Musica 2, Dec 2022, Paris, France.
  [⟨hal-03950324⟩](https://hal.science/hal-03950324v1)
- 🎼 Thomas Bottini. Quelle infrastructure pour l'annotation sémantique
  collaborative de partitions MEI ?. Rencontres de la musicologie numérique,
  Consortium Musica 2, Dec 2022, Paris, France.
  [⟨hal-03950321⟩](https://hal.science/hal-03950321v1)
- 🎼 Thomas Bottini, Christophe Guillotel-Nothmann, Marco Gurrieri, Félix
  Poullet-Pagès. Tonalities: a Collaborative Annotation Interface for Music
  Analysis. _Musical Heritage Knowledge Graphs workshop during the 22nd
  International Semantic Web Conference 2022_, Oct 2022, Hangzhou, China.
  [⟨hal-03923731⟩](https://hal.science/hal-03923731v1)
