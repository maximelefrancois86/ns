# Placement des fichiers RDF : dérivé des IRI, pas d'une table

Décidé le 2026-09-11.

## La décision

Les fichiers RDF servis sous `sosa/` et `ssn/` sont placés par un script qui
lit chaque fichier source de `../sdw-sosa-ssn/ssn/rdf/` et en déduit
l'emplacement à partir de ce que le fichier déclare :

- `owl:versionIRI` présente → elle donne l'emplacement physique.
  `http://www.w3.org/ns/sosa/2023/sampling/` → `sosa/2023/sampling/`.
- Absente → emplacement dérivé de l'IRI d'ontologie et de l'édition passée en
  option (`--edition 2023`), avec un avertissement.
- IRI hors de `http://www.w3.org/ns/` → le fichier n'a pas de maison ici ; le
  script le dit et passe.
- Namespace terminé par `#` → fichier plat, sans dossier.
  `http://www.w3.org/ns/sosa/system-capability-properties#`
  → `sosa/2023/system-capability-properties.ttl`.
- Namespace terminé par `/` → un dossier, et un fichier nommé d'après le chemin
  de l'IRI : `http://www.w3.org/ns/sosa/act/` → `sosa/2023/act/sosa-act.ttl`.

**Périmètre : mécanique.** Toute ontologie dont l'IRI déclarée est sous
`http://www.w3.org/ns/` est publiée, alignements compris (`bfo`, `dolce`,
`ido`, `saref`). Pas de liste à maintenir à la main.

## Pourquoi

Le script précédent (`scripts/sync-vocab-ssn-2023.sh`) était une table écrite à
la main : 11 fichiers placés alors que le dépôt source en déclare 18, les
modules du cœur 2023 (`sosa/act/`, `sosa/obs/`, `sosa/sam/`, `sosa/common/`,
`sosa/dep/` et leurs jumeaux `ssn/`) absents, et un renommage
(`system-capabilities-properties` → `system-capability-properties`) qui tombait
juste par accident. Une table se périme à chaque évolution du dépôt source ;
une dérivation depuis les IRI, non.

Le nommage dérivé de l'IRI plutôt que du nom de fichier source donne une base
stable à la négociation de contenu et rend l'emplacement prévisible depuis
l'URL servie. Il suit la convention déjà en place en 2017
(`sosa/sampling/sosa-sampling.ttl` pour `http://www.w3.org/ns/sosa/sampling/`).

## Ce que ça implique

- `vocab-ssn-2023/` (copie périmée de `ssn/rdf/`) disparaît : le script lit le
  dépôt voisin.
- `vocab-ssn-2023-cicd-output.md` disparaît : on ne parse pas une sortie texte,
  on redérive avec rdflib. `check_repository.ldpy` reste un garde-fou par son
  code de retour — sa section `=== Ontology Declarations ===` n'existe d'ailleurs
  plus depuis sa réécriture en ldpy (`sdw-sosa-ssn`, commit `603d603`).
- Seuls 3 fichiers sur 26 déclarent une `owl:versionIRI` (`sosa.ttl`, `ssn.ttl`,
  `sample-relations.ttl`). Le vrai correctif est en amont, dans `sdw-sosa-ssn` :
  voir [[next]].
