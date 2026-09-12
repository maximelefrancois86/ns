# 2026-09-12 — Les règles de réécriture, générées et testées

## Ce qui a été fait

- **Le script est devenu `publish_namespace.py`** : il place les fichiers *et*
  écrit les règles qui les servent. Les règles de modules et de termes vont
  dans un bloc délimité de `sosa/.htaccess` et `ssn/.htaccess` ; les
  `.htaccess` de l'arbre `2023/`, purement mécaniques, sont écrits en entier.
- **La table terme → ancre est extraite de la spécification**, où chaque terme
  est balisé `<section class="specterm …" id="…">` avec son IRI en clair.
- **Les `.htaccess` de 2017 ont été réécrits** sur le même gabarit que ceux de
  2023, vers la spécification de 2017.
- **Les deux `regression-tests.sh` couvrent les deux éditions** : 73 cas pour
  `sosa`, 63 pour `ssn`. Tous passent contre l'Apache du conteneur, y compris
  par `docker compose run --rm tests all`.
- Les quatre `regression-tests.sh` des sous-dossiers ont été supprimés, leurs
  cas repris dans les deux fichiers de namespace.

## Ce qui a été trouvé, et qui a changé la conception

- **Un `.htaccess` par module était une impasse.** Pour une IRI sans barre
  oblique finale servie depuis un dossier, mod_rewrite ne peut pas retirer le
  préfixe du répertoire : aucune règle ne s'applique et mod_dir répond par un
  **301**, la redirection permanente que la politique interdit. D'où un seul
  `.htaccess` par namespace, le chemin du module dans le motif, et aucun dossier
  intermédiaire. `sosa/prov` et `ssn/ext` sont devenus des fichiers plats.
- **La sérialisation RDF/XML de rdflib n'est pas déterministe** : l'ordre dépend
  du hash seed de l'interpréteur. Sans précaution, chaque exécution réécrivait
  170 lignes par fichier pour rien. Le script canonicalise le graphe, trie les
  triplets, lie les préfixes dans un ordre fixe et se relance lui-même avec
  `PYTHONHASHSEED=0`. Deux exécutions produisent maintenant les mêmes octets.
- **Deux fichiers source n'étaient lisibles que par leur propriétaire**, et la
  copie héritait de leurs droits : Apache répondait 403. Le script force 0644.
- **Tous les termes que le namespace `ssn:` garde en 2023 sont dépréciés**, donc
  sans ancre dans la spécification. Un terme sans ancre dans l'édition la plus
  récente est renvoyé vers la dernière édition qui le documente : `ssn:System`
  mène à `…/TR/vocab-ssn/#SSNSystem`, son graphe restant celui de 2023.
- **`sosa:hasSampledFeature` est déclaré par le module SSN extensions**, pas par
  le cœur : son graphe est `…/ns/ssn/2017/ext`, ce qu'un lecteur ne devine pas.
- 27 termes déclarés en 2023 n'y ont aucune ancre ; 2 d'entre eux — les termes
  de l'alignement PROV — ne sont documentés dans aucune édition.

## Ce qui reste

Voir `../next.md`. Rien n'a été committé dans `sdw-sosa-ssn`, où vivent le
script et les contrôles ajoutés à `check_repository.ldpy`.
