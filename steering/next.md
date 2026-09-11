# Prochaines étapes et décisions à prendre

## Pour Maxime

1. **`owl:versionIRI` manquante dans `sdw-sosa-ssn`.** Sur 26 fichiers RDF, 3
   seulement déclarent une IRI de version (`sosa.ttl`, `ssn.ttl`,
   `sample-relations.ttl`). Sans elle, le script de placement doit deviner
   l'édition. Veux-tu qu'on prépare une PR sur `sdw-sosa-ssn` qui ajoute
   `owl:versionIRI <…/2023/…>` à chaque module ? C'est la source de vérité de
   toute la mécanique.

2. **Où vit le script de placement à terme ?** Il est développé ici, mais il lit
   `sdw-sosa-ssn` et écrit dans un clone de `w3c/ns`, et il doit survivre à la
   PR pour les mises à jour futures. Candidats :
   `sdw-sosa-ssn/ssn/scripts/` (avec les autres scripts, à côté de la source de
   vérité) ou un dossier local jamais publié.

3. **Cible de la PR sur la spec 2017.** La REC publiée déclare `w3c/sdw`,
   branche `gh-pages`, `ssn/index.html`. Le fichier y a été remplacé le
   2024-10-18 par une page de redirection ; la dernière version complète
   (458 Ko) est au commit `60c08b65` du 2021-05-10. Restaurer et modifier là,
   ou passer par une demande de *Document Status Update* auprès du processus de
   transition W3C ? À trancher avant d'écrire quoi que ce soit.

4. **`sparql.ttl`** a été restauré dans le dépôt (il en était sorti par
   accident). La copie qui traîne dans le dossier parent peut être supprimée.

## Prochaines étapes

- Écrire le script de placement selon [[placement-des-fichiers-rdf]], et le
  faire tourner sur les 18 ontologies déclarées.
- Supprimer `bruno/`, `vocab-ssn-2023/`, `vocab-ssn-2023-cicd-output.md`, et les
  `.jsonld` / `.nt` de 2023.
- Rétablir les cas de test commentés dans `ssn/regression-tests.sh` et
  `sosa/regression-tests.sh`, puis les augmenter pour les deux éditions.
- Reprendre les `.htaccess` de `sosa/2023/` et `ssn/2023/`, aujourd'hui
  entièrement commentés.
- Faire passer toute la suite contre l'Apache local avant d'ouvrir la PR.
