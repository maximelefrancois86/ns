# Outillage de test : bash + curl, Apache en conteneur, hors PR

Décidé le 2026-09-11.

## La décision

- La collection Bruno (`bruno/`) est supprimée.
- Les tests restent les `regression-tests.sh` du dépôt : bash, `curl`, et un
  tableau de cas `numéro, Accept, chemin, code attendu, type attendu, URL
  finale`. On les rétablit puis on les augmente.
- Le harnais Apache en conteneur (`docker-compose.yml`, `docker/`) sert à les
  faire tourner en local contre le dépôt servi comme `https://www.w3.org/ns/`.
- **Cet outillage n'entre pas dans la pull request.** Il est supprimé au squash,
  comme `CLAUDE.md` et `steering/`.

## Pourquoi

Bruno demandait de maintenir quarante fichiers en double de ce que le shell
faisait déjà, et faisait diverger la référence. Rester sur les scripts existants,
c'est le plus petit écart par rapport à la branche `main`.

`docker-compose.yml` à la racine d'un dépôt partagé par tous les groupes de
travail du W3C est un ajout qui se discute pour lui-même ; il ne doit pas
retarder la PR sur les namespaces. La PR ne touche donc que `sosa/` et `ssn/`.

## Ce que ça implique

Les cas de test aujourd'hui commentés dans `ssn/regression-tests.sh` et
`sosa/regression-tests.sh` sont à rétablir avant d'être augmentés : dans l'état,
ces fichiers ne testent presque plus rien.
