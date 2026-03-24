# 📡 SHERLOCK

Cette page est le point d'entrée du programme de recherche/ingénierie SHERLOCK, porté par l'[Institut de Recherche en Musicologie](https://www.iremus.cnrs.fr/) et le [Consortium Musica*](https://musica.hypotheses.org/) de l'[IR* Huma-Num](https://www.huma-num.fr/).

SHERLOCK vise la construction d'une chaîne de collecte et de publication de données pour la recherche en sciences humaines et sociales autour de l'ontologie [CIDOC CRM](https://cidoc-crm.org/). Il articule :
- des réflexions méthodologiques et techniques autour de l'usage du CIDOC CRM comme ontologie centrale dans un système d'information scientifique collaboratif :
  - [Modéliser les données de la recherche avec le CIDOC CRM](https://github.com/Amleth/communications/blob/main/20260312-cm-crm/main.pdf), journée d'étude du Consortium Musica*, 12 mars 2026.
- des scénarios de mise en œuvre d'applications existantes comme Grist, Nakala ou Opentheso ([sherlock-grist-to-crm](https://github.com/sherlock-iremus/sherlock-grist-to-crm/blob/main/doc/mapping.md), [sherlock-grist-opentheso-plugin](https://github.com/sherlock-iremus/sherlock-grist-opentheso-plugin))
- le développement de nouvelles applications ([sherlock-app](https://github.com/sherlock-iremus/sherlock-app))
- le développement de scripts de transformation de données ([grist-nakala](https://github.com/sherlock-iremus/grist-nakala))
- des [données musicologiques](https://github.com/sherlock-iremus/iremus-sherlock-data-ttl) sémantiques modélisées avec le CIDOC CRM

## Schéma d'ensemble

```mermaid
    flowchart LR
    grist[👩‍🔬<br>Saisie des données dans Grist<br>+<br><a target="_blank" href="https://github.com/sherlock-iremus/sherlock-grist-to-crm/blob/main/doc/mapping.md">Conventions de mapping</a>]
    scripts[⚙️<br>Conversaion des données tabulaires → RDF/CIDOC CRM]
    sparql[🌐<br>Mise à disposition des données via un SPARQL endpoint]
    sherlock[🍱<br>Publication/exploration des données dans Sherlock App]

    grist --> scripts
    scripts --> sparql
    sparql --> sherlock
```

## Quelques vue de l'application SHERLOCK

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
