# 2026-09-11 — Placement de l'édition 2023, métadonnées de version de 2017

## Ce qui a été fait

- **Script de placement** écrit dans `../sdw-sosa-ssn/ssn/scripts/place_namespace_files.py`
  (pas encore committé là-bas). Il déduit chaque destination de l'IRI
  d'ontologie et de l'IRI de version déclarées par le fichier, copie le Turtle
  tel quel, génère le RDF/XML, et pose le fichier muet de négociation de contenu
  pour les modules servis depuis leur propre dossier. `--prune` supprime ce
  qu'une exécution précédente a laissé, sans jamais toucher aux `.htaccess`.
- **25 ontologies placées** sous `sosa/2023/` et `ssn/2023/`, dont les neuf
  modules du cœur que la table écrite à la main ignorait. Une seule est sans
  maison : `sosa-sdo.ttl`, qui déclare `https://example.org/sosa-sdo-mapping`.
- **`owl:versionIRI` ajoutée aux neuf ontologies de 2017**, dans leurs vingt
  sérialisations, vérifiées une à une : elles parsent et portent la déclaration.
- **Ménage** : `bruno/`, `vocab-ssn-2023/`, la sortie CI/CD, `scripts/` et
  `.venv` supprimés d'ici ; `Makefile` et `README.md` rendus à leur état de
  `main` ; le harnais Docker se documente lui-même dans `docker/README.md`.
- `vocab-ssn-2023-transition.md` supprimé d'ici — il vit dans `../sdw` — après
  report de ses conséquences pour ce dépôt dans `design/redirections.md`.

## Ce qui a été trouvé

- Le nommage dérivé des IRI corrige au passage une divergence que la table
  masquait : `system-capabilities-properties.ttl` déclare
  `…/sosa/system-capability-properties#`, au singulier.
- Cinq IRI d'ontologie de 2017 n'ont pas de barre oblique finale, et deux
  d'entre elles sont pourtant servies depuis un dossier (`sosa/prov`,
  `ssn/ext`) : `DirectorySlash` va s'en mêler. Noté dans `design/redirections.md`.
- En 2023, `sosa-prov` déclare son IRI sans barre oblique alors que la version
  2017 est servie depuis un dossier : les deux formes doivent résoudre.
- `vocab-ssn-2023-transition.md` se contredit sur `oboe` et `prov` : elle les
  présente comme ayant une IRI d'ontologie vivante, puis demande une redirection
  permanente de cette IRI vers 2017.
- Les quatre sérialisations de `ssn-ext` ne sont pas isomorphes : trois
  commentaires y portent des fins de ligne `\r\n` là où le Turtle a `\n`. C'est
  l'état publié en 2017 ; laissé tel quel.
- OWL ne permet pas à une ontologie de pointer vers une édition plus récente
  qu'elle. DCAT le fait, dans ce dépôt même : voir `design/metadonnees-de-version.md`.
- L'environnement Python utilisable est `~/.venvs/ldpy` (rdflib + ldpy).

## Ce qui reste

Voir `../next.md`. Rien n'a encore été écrit dans les `.htaccess` ni dans les
tests : c'est l'itération suivante.
