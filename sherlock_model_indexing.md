# Modèle SHERLOCK d'indexation des ressources

## Propriétés du CRM pour l'indexation

Deux propriétés du CRM permettent de réaliser l'indexation :

- `crm:P67_refers_to` (*renvoie à*) : Cette propriété documente qu'une instance de `crm:E89_Propositional_Object` contient un énoncé à propos d'une instance de `crm:E1_CRM_Entity` [🔗](https://cidoc-crm.org/html/cidoc_crm_v7.1.3.html#P67).
- `crm:P129_is_about` : Cette propriété documente documente qu'une instance de `crm:E89_Propositional_Object` a pour sujet une instance de `crm:E1_CRM_Entity`. [🔗](https://cidoc-crm.org/html/cidoc_crm_v7.1.3.html#P129).

L'indexation peut être réalisée avec un descripteur contrôlé issu d'un thésaurus (un `skos:Concept`/`crm:E55_Type`) ou avec une entité nommée (n'importe quelle `crm:E1_CRM_Entity`, mais plus particulièrement une `crm:E21_Person`, `crm:E53_Place` ou encore un `crm:E74_Group`).

## Exemples d'indexation avec un `skos:Concept`/`crm:E55_Type`

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

## Exemple d'indexation avec une entité nommée

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