# Prochaines étapes et décisions à prendre

## Pour Maxime

1. **Rien n'est committé dans `sdw-sosa-ssn`**, et c'est devenu le goulot :
   `ssn/scripts/publish_namespace.py` (le script de publication, qui place les
   fichiers et écrit les règles), `ssn/scripts/check_repository.ldpy` (qui gagne
   `check_publication()`) et `ssn/scripts/README.md`. Tout tourne, sur la branche
   `ldpy-checks`. Dis-moi si je commite, et où.

2. **L'issue sur `sosa:hasSampledFeature` est écrite**, prête à coller, dans
   [[issue-has-sampled-feature]] : elle propose de le déclarer dans le module
   des termes dépréciés de SOSA. Je ne la poste pas sans ton accord — c'est un
   dépôt de groupe de travail, et elle apparaîtra sous ton compte.

3. **Un bloc généré dans un `.htaccess` de `w3c/ns`, l'équipe l'acceptera-t-elle ?**
   60 lignes pour `sosa`, 33 pour `ssn`, une alternance de termes par module.
   C'est la seule inconnue qui peut encore faire tomber la règle du 404 : les
   solutions de repli sont dans [[redirection-des-termes]].

4. **La spécification 2023 n'ancre aucun de ses termes dépréciés** — dont les 22
   termes que le namespace `ssn:` garde. En attendant, `…/ns/ssn/System` renvoie
   le lecteur vers `…/TR/vocab-ssn/#SSNSystem`, la dernière édition qui le
   définit. Le vrai correctif est que la spécification les documente : question
   pour le WG, à porter avec le reste.

5. **La spec 2017, ce qui reste de ton côté** : soumettre à Bert Bos que notre
   bandeau est plus étoffé que les précédents, et caler la demande au Webmaster
   sur la date de publication de la REC 2023.

6. **La PR sur `sdw-sosa-ssn` pour les métadonnées de version de 2023**, quand
   le point 1 est réglé. Approche et état de 2017 dans [[metadonnees-de-version]].

## Prochaines étapes

- Relire le diff de la PR à tête reposée : 117 fichiers sous `sosa/` et `ssn/`,
  dont 23 `.htaccess`.
- Écrire le corps de la pull request : les deux éditions, les redirections
  temporaires, le 404 sur un terme inconnu, et **la liste des cas de test dont
  le comportement attendu change**, chacun marqué `# CHANGED` dans les fichiers.
- Décider du sort du harnais Docker au squash (aujourd'hui : supprimé).

## Bon à savoir

- L'environnement Python est `~/.venvs/ldpy` : rdflib et linked-data-python.
- `docker compose up -d web` puis `docker compose run --rm tests all` fait
  tourner les 136 cas contre un Apache local.
