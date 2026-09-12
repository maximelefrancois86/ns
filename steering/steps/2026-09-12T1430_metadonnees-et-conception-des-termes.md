# 2026-09-12 — Métadonnées de version de 2017, conception des redirections de termes

## Ce qui a été fait

- **Métadonnées DCAT sur les neuf ontologies de 2017**, dans leurs vingt
  sérialisations : `dcat:version`, `dcat:hasVersion` pour chaque édition,
  `dcat:hasCurrentVersion` pour celle à utiliser. Quatre modules que 2023 ne
  sert plus sous leur IRI — `ssn:ext`, `sosa:om`, `ssn:dul`, `ssn:systems/` —
  portent `owl:deprecated true`, et les trois qui ont un successeur le nomment
  par `dcterms:isReplacedBy`.
- Le script d'insertion **réutilise le préfixe déjà lié** à un namespace dans
  chaque document plutôt que d'en lier un second : `om.rdf` liait déjà
  `http://purl.org/dc/terms/` sous `dc:`, et c'est `dc:isReplacedBy` qui y est
  écrit. Chaque énoncé a été relu dans le graphe reparsé, dans les quatre
  syntaxes.
- `steering/` remis en ordre : `redirections.md` et `metadonnees-de-version.md`
  passent de `design/` à `decisions/`, puisque tranchés.
- **Conception des redirections de termes** écrite dans
  `design/redirection-des-termes.md`, avec le relevé des termes des deux
  éditions et l'inventaire des techniques praticables.

## Ce qui a été trouvé

- L'édition 2017 déclare **103 termes**, celle de 2023 **210**, dont **67
  communs**. Les 36 termes propres à 2017 sont les 30 du module *System
  capabilities* (passés sous `…/ns/sosa/` en 2023, donc d'autres IRI), les trois
  termes à dièse de l'alignement O&M, `…/sosa/prov/eventAssociation`, et
  `…/sosa/hasSampledFeature`.
- **Les namespaces à dièse ne demandent aucune règle** : le fragment ne quitte
  jamais le client. Cela retire 48 termes du problème.
- **`RewriteMap` est inutilisable ici** : la directive ne s'écrit que dans la
  configuration du serveur, jamais dans un `.htaccess`.
- La spécification 2023 marque chaque terme par
  `<section class="specterm sosa" id="SOSAActuator">` et redonne l'IRI en clair :
  la table terme → ancre est extractible. Mais le préfixe d'ancre suit le
  module, pas le namespace : 113 `SOSA…`, 31 `SSN…`, 22 `OMS…`. En 2017 la
  convention était uniforme, `#SOSA<terme>` et `#SSN<terme>`.
- La règle du 404 **change le comportement attendu de huit tests existants**
  écrits par Bert Bos, qui vérifient qu'un terme inventé redirige quand même
  vers la spécification.

## Ce qui reste

Voir `../next.md`. Les `.htaccess` n'ont toujours pas été touchés : ils viennent
ensuite, avec les tests qui les accompagnent.
