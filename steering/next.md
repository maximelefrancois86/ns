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

5. **`check_repository.ldpy` a gagné `check_publication()`**, puisque tu l'avais
   ouvert : la section `=== Ontology Declarations ===` est de retour, et deux
   contrôles non fatals s'y ajoutent — toute ontologie déclarée doit avoir une
   maison sous `/ns/sosa/` ou `/ns/ssn/` (`sosa-sdo.ttl` n'en a pas, il déclare
   `https://example.org/…`), et toute `owl:versionIRI` doit être l'IRI
   d'ontologie avec une édition de plus. À relire, et à committer avec le reste.

   Au passage : sur la branche `ldpy-checks`, le script échoue déjà sur trois
   contrôles qui n'ont rien à voir avec nous — liens internes cassés, termes
   utilisés jamais définis, termes sans label ni définition.

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
