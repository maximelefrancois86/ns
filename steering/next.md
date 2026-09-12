# Prochaines étapes et décisions à prendre

## Pour Maxime

1. **Rien n'est committé dans `sdw-sosa-ssn`**, et ça commence à faire :
   `ssn/scripts/place_namespace_files.py` (nouveau), `ssn/scripts/check_repository.ldpy`
   (gagne `check_publication()` : la section `=== Ontology Declarations ===` et
   deux contrôles non fatals) et `ssn/scripts/README.md`. Tout est écrit et
   tourne, sur la branche `ldpy-checks`. Dis-moi si je commite, et où.

2. **Un bloc généré dans un `.htaccess`, l'équipe du W3C l'acceptera-t-elle ?**
   Servir 404 sur une IRI de terme inconnue oblige le serveur à connaître la
   liste des termes, donc à porter une alternance de 165 termes produite par
   script. Les solutions de repli sont dans [[redirection-des-termes]]. C'est la
   seule inconnue qui peut faire capoter la règle 4.

3. **`…/ns/sosa/hasSampledFeature`** est le seul terme du cœur de 2017 que 2023
   ne reprend pas sous la même IRI. Il redirige vers sa définition de 2017, ou
   vers ce qui le remplace en 2023 ?

4. **La spec 2017, ce qui reste de ton côté** : soumettre à Bert Bos que notre
   bandeau est plus étoffé que les précédents, et caler la demande au Webmaster
   sur la date de publication de la REC 2023. Le texte est prêt dans
   [[modification-de-la-rec-2017]].

5. **La PR sur `sdw-sosa-ssn` pour les métadonnées de version de 2023** est à
   ouvrir quand le point 1 est réglé : `dcat:version`, `dcat:hasVersion`,
   `dcat:hasCurrentVersion`, `owl:priorVersion`, et la dépréciation soumise au
   WG. L'approche et ce qui a été fait côté 2017 sont dans
   [[metadonnees-de-version]].

## Prochaines étapes

- Écrire les `.htaccess` selon [[politique-de-redirection]] : les racines
  `sosa/` et `ssn/`, et les deux sous-arbres d'édition. Ceux de 2023 sont
  aujourd'hui entièrement commentés, celui de `sosa/` applique encore la lecture
  abandonnée pour `oboe` et `prov`.
- Générer les règles de termes, et la table terme → ancre depuis la spec 2023.
- Rétablir les cas de test commentés dans `ssn/regression-tests.sh` et
  `sosa/regression-tests.sh`, puis les augmenter : deux éditions, IRI de version
  sans barre oblique servies depuis un dossier, et les 404 de la règle 4.
  **Huit cas existants changent de comportement attendu** (9, 10, 11, 21, 22,
  23, 33, 34) : à signaler explicitement dans la PR.
- Faire passer toute la suite contre l'Apache local avant d'ouvrir la PR.

## Bon à savoir

L'environnement Python est `~/.venvs/ldpy` : rdflib et linked-data-python, donc
il fait tourner le script de placement comme `check_repository.ldpy`.
