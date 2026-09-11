# Prochaines étapes et décisions à prendre

## Pour Maxime

1. **Métadonnées de version, au-delà de `owl:versionIRI`.** Instruit dans
   [[metadonnees-de-version]], avec le précédent DCAT de ce dépôt. Trois
   questions : va-t-on plus loin, dans le même mouvement pour 2017 et 2023, et
   jusqu'à `owl:deprecated` sur ce qui n'a pas de suite en 2023 (`ssn:ext`,
   `sosa:om`) ?

2. **`oboe` et `prov` : quelle édition sert l'IRI d'ontologie ?** La transition
   se contredit sur ces deux alignements, et l'édition 2023 les met bien à jour.
   Instruit dans [[redirections]]. En attendant, l'IRI d'ontologie suivra
   l'édition courante, comme pour tous les autres modules.

3. **La spec 2017 : voie éditoriale ou errata ?** Reste la seule question
   ouverte de [[modification-de-la-rec-2017]], et elle revient au WG.

4. **Le script de placement n'est pas committé.** Il est écrit et il tourne :
   `sdw-sosa-ssn/ssn/scripts/place_namespace_files.py`. Je ne commite pas dans
   ce dépôt sans ton accord — dis-moi si je le fais, et sur quelle branche.
   Il faut aussi l'ajouter au tableau de `ssn/scripts/README.md`.

5. **Quels contrôles ajouter à `check_repository.ldpy` ?** Deux me seraient
   utiles ici : que toute ontologie déclarée ait une maison sous `/ns/sosa/` ou
   `/ns/ssn/` — aujourd'hui `sosa-sdo.ttl` déclare `https://example.org/…` et
   n'en a pas — et le retour de la section `=== Ontology Declarations ===`, que
   ta réécriture en ldpy a fait disparaître. Le script de placement ne s'en sert
   pas (il redérive tout), mais c'est la table qu'un humain veut lire.

## Prochaines étapes

- Écrire les `.htaccess` : les racines `sosa/` et `ssn/` qui redirigent vers
  l'édition courante, les IRI ancrées sur 2017, et les deux sous-arbres
  d'édition. Le tableau des redirections attendues est dans [[redirections]].
- Traiter le cas des IRI de version sans barre oblique servies depuis un dossier
  (`…/sosa/2017/prov`, `…/ssn/2017/ext`) : `DirectorySlash` ou règle explicite.
- Rétablir les cas de test commentés dans `ssn/regression-tests.sh` et
  `sosa/regression-tests.sh`, puis les augmenter pour les deux éditions.
- Faire passer toute la suite contre l'Apache local avant d'ouvrir la PR.

## Bon à savoir

L'environnement Python est `~/.venvs/ldpy` : il a rdflib et linked-data-python,
donc il fait tourner aussi bien le script de placement que `check_repository.ldpy`.
Il n'y a plus de `.venv` dans ce dépôt.
