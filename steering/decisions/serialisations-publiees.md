# Sérialisations publiées : Turtle et RDF/XML

Décidé le 2026-09-11.

## La décision

Chaque ontologie 2023 est publiée en Turtle et en RDF/XML, et rien d'autre.
Pas de JSON-LD, pas de N-Triples.

## Pourquoi

C'est ce que fait l'édition 2017 (`sosa.ttl` + `sosa.rdf`), la négociation de
contenu reste à deux branches, et la pull request reste d'une taille relisible.
Le script de synchronisation précédent générait quatre formats par module, ce
qui quadruplait le volume du diff pour des formats peu demandés.

## Ce que ça implique

Les `.jsonld` et `.nt` déjà produits sous `sosa/2023/` et `ssn/2023/` sont à
supprimer. Le cas de `ssn/2017/ext/`, qui porte historiquement quatre formats,
ne change pas : les fichiers de 2017 sont figés.
