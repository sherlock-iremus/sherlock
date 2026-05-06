# `🗃️ SHERLOCK : Modèle d'indexation avec le CRM`

## `🔍 Propriétés du CRM pour l'indexation`

Deux propriétés du CRM permettent de réaliser l'indexation :

- `crm:P67_refers_to` (_renvoie à_) : Cette propriété documente qu'une instance
  de `crm:E89_Propositional_Object` contient un énoncé à propos d'une instance
  de `crm:E1_CRM_Entity`
  [🔗](https://cidoc-crm.org/html/cidoc_crm_v7.1.3.html#P67).
- `crm:P129_is_about` : Cette propriété documente qu'une instance de
  `crm:E89_Propositional_Object` a pour sujet une instance de
  `crm:E1_CRM_Entity`
  [🔗](https://cidoc-crm.org/html/cidoc_crm_v7.1.3.html#P129).

L'indexation peut être réalisée avec un concept issu d'un thésaurus (un
`skos:Concept`/`crm:E55_Type`) ou avec une entité nommée (n'importe quelle
`crm:E1_CRM_Entity`, mais plus particulièrement une `crm:E21_Person`,
`crm:E53_Place` ou encore un `crm:E74_Group`).

## `🏷️ Exemples d'indexation avec un concept`

```mermaid
    flowchart TB

    A[Un article sur le Synclavier]
    click A "https://fr.wikipedia.org/wiki/Synclavier"

    B[Un article évoquant le Synclavier]
    click B "https://www.soundonsound.com/people/mark-snow-scoring-x-files"
    
    C[Le concept de Synclavier dans le thésaurus MIMO]
    click C "https://vocabulary.mimo-international.com/InstrumentsKeywords/fr/page/2320"
   
    A -->|crm:P129_is_about| C
    B -->|crm:P67_refers_to| C

    A -->|rdf:type| crm:E33_Linguistic_Object
    B -->|rdf:type| crm:E33_Linguistic_Object
    C -->|rdf:type| skos:Concept
    C -->|rdf:type| crm:E55_Type
```

## `🤵 Exemple d'indexation avec une entité nommée`

```mermaid
    flowchart TB
    E21[Mark Snow]
    click E21 "https://data.bnf.fr/fr/ark:/12148/cb13992208s"
    E33[Un article évoquant Mark Snow]
    click E33 "https://www.soundonsound.com/people/mark-snow-scoring-x-files"

    E21 -->|rdf:type| crm:E21_Person
    E33 -->|rdf:type| crm:E33_Linguistic_Object
    E33 -->|crm:P67_refers_to| E21
```

## `🧑‍🔬 Exemples d'indexation via une annotation`

```mermaid
    flowchart LR

    E33[Un article évoquant le Synclavier]
    click E33 "https://www.soundonsound.com/people/mark-snow-scoring-x-files"
    
    C[Le concept de Synclavier dans le thésaurus MIMO]
    click C "https://vocabulary.mimo-international.com/InstrumentsKeywords/fr/page/2320"

    E13 -->|crm:P140_assigned_attribute_to| E33
    E13 -->|crm:P141_assigned| C
    E13 -->|crm:P177_assigned_property_of_type| crm:P67_refers_to
    E13 -->|crm:P14_carried_out_by| Moi
   
    E33 -->|rdf:type| crm:E33_Linguistic_Object
    C -->|rdf:type| skos:Concept
    C -->|rdf:type| crm:E55_Type
    E13 -->|rdf:type| crm:E13_Attribute_Assignment
    Moi -->|rdf:type| crm:E21_Person
```

La propriété utilisée pour établir le lien d'indexation (`crm:P67_refers_to`,
`crm:P129_is_about`) devient la valeur désignée par la propriété
`crm:P177_assigned_property_of_type`. Remarquons que dans le CRM, toutes les
propriétés sont des `crm:E55_Type`, ce qui permet de les utiliser comme objets
de triplets dont le prédicat est `crm:P177_assigned_property_of_type`.

## `⛩️ Référentiels et annotations dans le contexte des projets`

Les index sont regroupées dans des référentiels :

|   Type de l'index   |     Type du référentiel      | Propriété liant l'index à son référentiel |
| :-----------------: | :--------------------------: | :---------------------------------------: |
|   `skos:Concept`    |     `skos:ConceptScheme`     |              `skos:inScheme`              |
| `crm:E1_CRM_Entity` | `crm:E32_Authority_Document` |          `crm:P71i_is_listed_in`          |

Dans la perspective d'une documentation du processus scientifique, on peut
vouloir exprimer que tel projet de recherche recourt à tels référentiels pour
indexer telle collection.

```mermaid
flowchart TB

%% nommage et typage

E7_projet[« Un projet »]-->|rdf:type| crm:E7_Activity
E13a[« Indexation 1 »]-->|rdf:type| crm:E13_Attribute_Assignment
E13b[« Indexation 2 »]-->|rdf:type| crm:E13_Attribute_Assignment
E32_Personnes[« 🗃️  Référentiel de personnes »]-->|rdf:type| crm:E32_Authority_Document
E55_projet[« Projet de recherche »]-->|rdf:type| crm:E55_Type
E65_collection[« Création de la collection »]-->|rdf:type| crm:E65_Creation
SKOS_CS[« 🗂️  Thésaurus SKOS »]-->|rdf:type| skos:ConceptScheme
SKOS_Concept1[« 🏷️  Concept 1 »]-->|rdf:type| skos:Concept
Personne1[« 🤵  Personne 1 »]-->|rdf:type| crm:E21_Person

%% liens

SKOS_Concept1-->|skos:inScheme| SKOS_CS
Personne1-->|crm:P71i_is_listed_in| E32_Personnes
E7_projet-->|crm:P2_has_type| E55_projet
E7_projet-->|crm:P9_consists_of| E65_collection
E65_collection-->|crm:P94_has_created| Collection
Collection-->|rdf:type| sherlock:Collection
E7_projet-->|crm:P9_consists_of| E13a
E7_projet-->|crm:P9_consists_of| E13b
E13a-->|crm:P141_assigned| SKOS_Concept1
E13b-->|crm:P141_assigned| Personne1
E13a-->|crm:P16_used_specific_object| SKOS_CS
E13b-->|crm:P16_used_specific_object| E32_Personnes
```

Note : à des fins de lisibilité, les propriétés des annotations E13 `crm:P140_assigned_attribute_to` et `crm:P177_assigned_property_of_type` ne sont pas représentées sur ce diagramme.