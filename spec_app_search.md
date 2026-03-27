# Application SHERLOCK : spécification du composant de recherche de ressources par descripteurs

👩‍🔬 Ont participé à l'élaboration de cette spécification :
  - [Thomas Bottini](https://scanr.enseignementsup-recherche.gouv.fr/authors/idref152847812)
  - [Anne Piéjus](https://scanr.enseignementsup-recherche.gouv.fr/authors/idref05661389X)
  - [Nathalie Berton-Blivet](https://scanr.enseignementsup-recherche.gouv.fr/authors/idref153609702)

📚 Lecture préalable : [Modèle SHERLOCK d'indexation des ressources](sherlock_model_indexing.md).

💡 Une ressource peut être indexée par des concepts organisés dans des thésaurus et par des entités nommées réunies dans des référentiels. Dans ce document, le terme « descripteur » sera employé pour désigner toute entité servant à l'indexation des ressources, qu'il s'agisse d'un concept ou d'une entité nommée.

## Description du comportement attendu

- La recherche comporte deux aspects, matérialisés par deux panneaux :
  1. La recherche des descripteurs que l'utilisateur souhaite convoquer pour chercher des ressources indexées.
  2. La visualisation des ressources indexées par les descripteurs retenus.
- Chaque projet est associé à des référentiels d'entités nommées et à des thésaurus dont les descripteurs ont servi à indexer ses données. La recherche de descripteurs ne porte que sur les référentiels et thésaurus associés au projet courant.
- Les descripteurs sont trouvés par une recherche plein texte sur leurs libellés (préférés et alternatifs).
- Pour chaque descripteur trouvé, trois fonctions sont exposées :
  1. Un lien conduisant à la consultation de l'entité nommée dans le contexte de son référentiel ou du concept dans le contexte de son thésaurus.
  2. Un bouton ajoutant le descripteur à la liste de recherche.
  3. Un bouton ajoutant le descripteur à la liste d'exclusion.
- À chaque fois qu'un descripteur est ajouté ou retiré de la liste de recherche ou d'exclusion et à chaque fois que l'opérateur booléen courant est modifié, la liste des ressources indexées trouvées est recalculée.
- La liste des ressources indexées trouvées peut également être filtrée par date (au sens de [E65 Creation](https://cidoc-crm.org/html/cidoc_crm_v7.1.3.html#E65).

## Maquette fil de fer du composant

```
INDICATION DU PROJET COURANT :

+------------------------------------------------------------------------------+
|                                                                              |
|  Corpus : Projet « X »                                                       |
|                                                                              |
+------------------------------------------------------------------------------+

RECHERCHE DES DESCRIPTEURS :

+------------------------------------------------------------------------------+
|                                                                              |
|  Liste de descripteurs :                                                     |
|    • Synclavier (Concept, thésaurus des instruments de musique) [retirer]    |
|                                                                              |
|                                                                              |
|  Opérateur booléen :                                                         |
|  [x] OR      [ ] XOR      [ ] AND                                            |
|                                                                              |
|  Exclure les ressources indexées par les descripteurs :                      |
|    • Moog (Concept, thésaurus des instruments de musique) [retirer]          |
|                                                                              |
+------------------------------------------------------------------------------+
|                                                                              |
|  Recherche d'un descripteur par son libellé :                                |
|                                                                              |
|                     mar__________________________________                    |
|                                                                              |
+------------------------------------------------------------------------------+
|                                                                              |
|  Résultats (2 descripteurs trouvés) :                                        |
|                                                                              |
|  • Mark Snow (Personne)                                                      |
|     → Consulter dans le référentiel des personnes                            |
|     → Ajouter à la liste de recherche                                        |
|     → Ajouter à la liste d'exclusion                                         |
|  • Maracas (Concept)                                                         |
|     → Consulter dans le thésaurus des instruments de musique                 |
|     → Ajouter à la liste de recherche                                        |
|     → Ajouter à la liste d'exclusion                                         |
|                                                                              |
+------------------------------------------------------------------------------+

RESSOURCES INDEXÉES TROUVÉES :

+------------------------------------------------------------------------------+
|                                                                              |
|  Filtrage temporel :                                                         |
|                                                                              |
|  1900                                                                  1974  |
|  ········[······················]··········································  |
|          1909                1932                                            |
|                                                                              |
+------------------------------------------------------------------------------+
|                                                                              |
|  Résultats (1 ressource trouvée) :                                           |
|                                                                              |
|  • « Lorem ipsum… » (E33, article)                                           |
|    → Consulter la ressource dans SHERLOCK                                    |
|                                                                              |
+------------------------------------------------------------------------------+
```
