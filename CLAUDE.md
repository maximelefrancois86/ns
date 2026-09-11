# ns — transition SSN/SOSA : servir les éditions 2017 et 2023

**Conversation en français. Tout ce qui est versionné — code, commentaires,
documentation, messages de commit — en anglais.**

## Ce qu'est ce dépôt

`w3c/ns` est l'arborescence servie sous `https://www.w3.org/ns/`. Apache y
applique les `.htaccess` de chaque dossier : négociation de contenu entre
Turtle, RDF/XML et HTML, et redirection des IRI de termes vers l'ancre
correspondante de la spécification.

**Seuls `sosa/` et `ssn/` nous concernent.** Le reste appartient à d'autres
groupes de travail. La PR vers `w3c/ns` doit rester petite et relisible : aucun
fichier hors `sosa/`, `ssn/` et l'outillage de test explicitement décidé.

## Ce qu'on fait

L'édition 2023 de SSN/SOSA devient une W3C Recommendation. Le serveur doit
servir **les deux éditions** :

- les IRI d'ontologie (`…/ns/sosa/`, `…/ns/ssn/`, `…/ns/sosa/sampling/`, …)
  redirigent vers l'édition courante ;
- chaque édition a son IRI de version sous une année : `…/ns/sosa/2017/`,
  `…/ns/sosa/2023/` ;
- les modules figés en 2017 (`ssn/systems/`, `ssn/dul`, `sosa/om`, `sosa/oboe`,
  `sosa/prov/`) redirigent en permanence vers leur emplacement 2017.

## Les dépôts voisins

| Dépôt | Rôle |
|---|---|
| `../sdw-sosa-ssn` (`w3c/sdw-sosa-ssn`) | **Source de vérité** des fichiers RDF (`ssn/rdf/`) et de la spécification 2023. Contient aussi `ssn/scripts/check_repository.ldpy`, qui dit quelles ontologies existent et ce que chaque fichier déclare. |
| `w3c/sdw`, branche `gh-pages` | Source historique de la spécification 2017 : `ssn/index.html`, dernière version complète au commit `60c08b65` (2021-05-10), remplacée depuis par une page de redirection. C'est la cible probable de la PR décrite par `vocab-ssn-2023-transition.md`. |

## Règles de travail sur le contenu

- **Les fichiers RDF de 2023 ne sont jamais écrits à la main ici.** Ils sont
  placés depuis `../sdw-sosa-ssn` par un script, qui déduit leur emplacement de
  l'IRI d'ontologie et de l'IRI de version que chaque fichier déclare. Une
  correction sur un fichier RDF se fait dans `sdw-sosa-ssn`, puis on resynchronise.
- **Les fichiers de 2017 sont figés.** Ils ne bougent que de place, jamais de
  contenu : la Recommendation de 2017 reste ce qu'elle est.
- **Toute règle de réécriture est accompagnée d'un test.** Les tests sont des
  scripts `regression-tests.sh` en bash + `curl`, dans la forme déjà en place
  dans le dépôt (convention de Bert Bos) : un tableau de cas
  `numéro, Accept, chemin, code attendu, type attendu, URL finale attendue`.
  On étend ce tableau, on ne le remplace pas. Un test existant qui doit changer
  est signalé explicitement, jamais modifié en silence.
- **Les tests tournent en local** contre un Apache en conteneur qui sert le
  dépôt comme `https://www.w3.org/ns/`, avant toute PR.
- **Environnement Python** : `.venv/bin/python` (rdflib).

## Le cycle d'une itération

1. **Commit des apports de Maxime** en premier, séparément, avant toute autre chose.
2. **Travail** : traiter ce qui ne demande pas de nouvelle décision de sa part.
3. **Intégration** : mettre `steering/next.md` à jour et le simplifier.
4. **Commit des apports de Claude**.

On travaille dans la branche `maxime-ssn-2023-transition`, qui sera squashée
dans une branche propre avant d'ouvrir la pull request — squashée parce que les
fichiers de travail (`CLAUDE.md`, `steering/`, et tout fichier temporaire de
transition) sont supprimés à ce moment-là.

### Le dossier doit toujours être cohérent

**À la fin de chaque itération, le dossier est dans un état cohérent.** Pas de
renvoi vers un fichier qui n'existe plus, pas de date qui en contredit une
autre, pas de décision tranchée qui traîne encore comme question ouverte, pas de
document de référence périmé qui ne serait pas signalé comme tel. Une itération
qui casse la cohérence n'est pas terminée.

## Où va quoi

| Chemin | Contenu | Durée de vie |
|---|---|---|
| `steering/next.md` | **Uniquement** les demandes de Claude à Maxime, les décisions à prendre, les prochaines étapes. Ni compte rendu, ni analyse, ni historique. Mis à jour à chaque itération : ce qui est fait ou tranché en sort. | vivant, court |
| `steering/decisions/<sujet>.md` | Une fiche par décision tranchée : la décision, la date, pourquoi, ce qu'elle implique. Ce qui quitte `next.md` parce que c'est tranché arrive ici. | permanent |
| `steering/steps/AAAA-MM-JJTHHMM_sujet.md` | Une fiche par itération de travail : ce qui a été fait, ce qui a été trouvé, ce qui reste. C'est l'historique. | permanent, jamais réécrit |
| `scripts/` | L'outillage de transition : placement des fichiers RDF depuis `../sdw-sosa-ssn`, génération des sérialisations. Son emplacement définitif reste à trancher (voir `steering/next.md`). | à trancher |
| `docker-compose.yml`, `docker/` | L'Apache local qui sert le dépôt comme `https://www.w3.org/ns/` pour faire tourner les tests. N'entre pas dans la PR : supprimé au squash. | jusqu'à la PR |

Un document de référence qui devient faux est corrigé ou marqué périmé en tête de
fichier, jamais laissé tel quel.

## Conventions

- **Nommage** : `AAAA-MM-JJTHHMM_sujet.md` pour un document horodaté,
  `AAAA-MM-JJ_sujet.md` quand la date désigne un événement et non un instant de
  production, `kebab-case` sinon. Pas d'espace ni d'accent dans les noms de
  fichiers.
- **Git** : commits en anglais. Un commit par nature d'apport, jamais mélangés.
  Les déplacements de fichiers sont committés comme des déplacements (`git mv`),
  séparément de toute modification de contenu, pour que la PR reste lisible.
