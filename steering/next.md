# Prochaines étapes et décisions à prendre

## Pour Maxime

1. **`owl:versionIRI` manquante dans `sdw-sosa-ssn`.** Sur 26 fichiers RDF, 3
   seulement déclarent une IRI de version (`sosa.ttl`, `ssn.ttl`,
   `sample-relations.ttl`). Sans elle, le script de placement doit deviner
   l'édition. Veux-tu qu'on prépare une PR sur `sdw-sosa-ssn` qui ajoute
   `owl:versionIRI <…/2023/…>` à chaque module ? C'est la source de vérité de
   toute la mécanique.

tous les fichiers dans ../sdw-sosa-ssn/ssn/rdf/ sont la version 2023.  les fichiers qui étaient historiquement ici sont la version 2017. A ces fichiers qui étaient historiquement ici, on ajoute un versionIRI si nécessaire, et peut-être d'autres métadonnées (dépréciation, etc.) qui pousse les utilisateurs à migrer. 

2. **Où vit le script de placement à terme ?** Il est développé ici, mais il lit
   `sdw-sosa-ssn` et écrit dans un clone de `w3c/ns`, et il doit survivre à la
   PR pour les mises à jour futures. Candidats :
   `sdw-sosa-ssn/ssn/scripts/` (avec les autres scripts, à côté de la source de
   vérité) ou un dossier local jamais publié.

aucun script ne devrait être ici. d'ailleurs, on suppime .venv ; on fait porter les scripts dans ../sdw-sosa-ssn/ssn/scripts (en expliquant bien la supposition du positionnement relatif de ns et sdw-sosa-ssn)  

3. **Modifications de la spec 2017.** La question « restaurer et modifier
   `w3c/sdw` ou demander un *Document Status Update* » est instruite dans
   [[modification-de-la-rec-2017]] : ce sont trois livrables distincts, pas une
   alternative. Reste une seule décision, qui revient au WG : les `div.warning`
   et la réécriture de § 4.1 passent-ils par une republication en REC révisée
   éditoriale, ou par l'errata ? Rien ne peut partir au Webmaster avant que
   `vocab-ssn-2023` soit REC (c'est un WD du 2026-09-10) ni avant que la PR
   `w3c/ns` fasse résoudre les IRI `…/2017/…`.

j'ai commencé les investigations sur la spec 2017 dans ../sdw
j'y ai copié vocab-ssn-2023-transition.md donc si on n'en a pas besoin ici, on peut supprimer.
à moins que ça donne des indications sur comment il faut implémenter les choses. tu peux juste reporter les besoins dans le dossier steering avant de supprimer.

4. **`sparql.ttl`** a été restauré dans le dépôt (il en était sorti par
   accident). La copie qui traîne dans le dossier parent peut être supprimée.

c'est fait

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

GO