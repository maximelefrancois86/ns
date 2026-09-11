# 2026-09-11 — État des lieux et cadrage

## Ce qui a été fait

- `CLAUDE.md` réécrit : il décrivait encore un dépôt de matériel de cours.
- Tout le travail en cours, jusqu'ici non versionné sur `main`, committé sur la
  branche `maxime-ssn-2023-transition`.
- `sparql.ttl` restauré.
- Quatre décisions prises : voir `decisions/`.

## Ce qui a été trouvé

- `scripts/sync-vocab-ssn-2023.sh` place 11 fichiers ; le dépôt source en
  déclare **18**. Les modules du cœur 2023 — `sosa/act/`, `sosa/obs/`,
  `sosa/sam/`, `sosa/common/`, `sosa/dep/` et leurs jumeaux `ssn/` — ne sont
  placés nulle part : les IRI qu'ils déclarent renverraient 404.
- `vocab-ssn-2023/` est une copie déjà périmée de `../sdw-sosa-ssn/ssn/rdf/` :
  fichiers divergents, exemples manquants (`AgeOfAir-i-adopt.ttl`,
  `CO2InAir-i-adopt.ttl`, `Nigella-Lawson-brownies/`), alignements en trop
  (`bfo-prov.ttl`, `sosa-bco.ttl`) et `sosa-dolce.ttl` manquant.
- Sur 26 fichiers RDF, 3 déclarent une `owl:versionIRI`.
- `sosa-sdo.ttl` déclare `https://example.org/sosa-sdo-mapping` : pas de maison
  sous `/ns/`.
- `check_repository.ldpy` n'imprime plus la section
  `=== Ontology Declarations ===` dont dépendait le plan initial, depuis sa
  réécriture en Linked-Data Python (`sdw-sosa-ssn`, commit `603d603`).
- La plupart des cas de test de `ssn/regression-tests.sh` et
  `sosa/regression-tests.sh` sont commentés ; les `.htaccess` de `sosa/2023/` et
  `ssn/2023/` le sont entièrement.
- La spécification 2017 vit dans l'historique de `w3c/sdw` (`gh-pages`,
  `ssn/index.html`, dernière version complète au commit `60c08b65` du
  2021-05-10) ; la REC publiée pointe toujours vers ce dépôt.
- `sparql.ttl` avait été déplacé hors du dépôt, à l'identique, dans le dossier
  parent.

## Ce qui reste

Voir `../next.md`.
