# Servir les IRI de terme : la dernière édition qui les déclare, ou 404

Question ouverte, ouverte le 2026-09-12. La politique est tranchée
([[politique-de-redirection]], règles 3 et 4) ; c'est sa mise en œuvre qui ne
l'est pas.

## Ce que les règles demandent

Une IRI de terme sert la **dernière édition qui déclare ce terme**, et une IRI
de terme **inconnue renvoie 404**. Les règles d'aujourd'hui ne savent faire ni
l'un ni l'autre : elles réécrivent n'importe quel chemin en `?term=…` et
redirigent vers l'ancre correspondante de la spécification, que le terme existe
ou non. `https://www.w3.org/ns/sosa/Licorne` redirige aujourd'hui vers
`https://www.w3.org/TR/vocab-ssn/#SOSALicorne`.

## L'état des termes, relevé le 2026-09-12

| | 2017 | 2023 |
|---|---|---|
| Termes déclarés | 103 | 210 |
| Communs aux deux éditions | 67 | 67 |
| Propres à l'édition | 36 | 143 |

Les 36 termes que 2023 ne reprend pas :

- les 30 termes du module *System capabilities*, `…/ns/ssn/systems/Accuracy` et
  ses voisins — en 2023 ils existent toujours, mais sous `…/ns/sosa/`, ce sont
  donc des IRI différentes ;
- les trois termes à dièse de l'alignement O&M, `…/ns/sosa/om#ObservationProcedure`
  et ses voisins ;
- `…/ns/sosa/prov/eventAssociation` ;
- `…/ns/sosa/hasSampledFeature`, seul terme du cœur de 2017 sans successeur de
  même IRI en 2023.

**Les namespaces à dièse ne posent aucune question.** Dans
`…/ns/sosa/system-capability-properties#Accuracy`, le fragment ne quitte jamais
le client : le serveur reçoit une requête pour le document entier. Les 45
propriétés des deux vocabulaires de 2023 et les trois termes de `om#` ne
demandent donc aucune règle. Restent environ 165 termes à barre oblique en 2023
et 100 en 2017.

## La technique : ce qui est possible dans un `.htaccess`

- **`RewriteMap` est hors de portée.** La directive ne s'écrit que dans la
  configuration du serveur ou d'un hôte virtuel, jamais dans un `.htaccess` ;
  seule son *utilisation* y est permise, si l'équipe systèmes du W3C en a défini
  une. Ce n'est pas le cas, et le demander allongerait la transition d'autant.
- **Une alternance de termes dans une `RewriteRule`** est la seule forme qui
  tienne dans un `.htaccess` : `^(Actuation|Actuator|…|Stimulus)$`. Pour 165
  termes, c'est une ligne de deux à trois kilo-octets. Apache compile ça une
  fois ; ce n'est pas un problème de performance, c'est un problème de lecture.
- **Un fichier témoin par terme**, testé par `RewriteCond … -f`, garde le
  `.htaccess` court au prix de 165 fichiers vides dans l'arborescence. Plus
  facile à régénérer, beaucoup plus lourd à relire dans une pull request.

L'alternance générée est recommandée : un bloc délimité, écrit par un script,
avec un commentaire qui dit quel script l'a produit et à partir de quoi.

## Les ancres, édition par édition

- **2017** : la convention est uniforme, `#SOSA<terme>` et `#SSN<terme>`. C'est
  ce que font les règles actuelles, et ce que vérifient les tests existants.
- **2023** : la spécification marque chaque terme par
  `<section class="specterm sosa" id="SOSAActuator">` et redonne l'IRI en clair
  dans le corps de la section. L'ancre est donc **extractible** du source, mais
  elle n'est plus uniforme : 113 ancres `SOSA…`, 31 `SSN…`, 22 `OMS…`. Le
  préfixe suit le module, pas le namespace du terme.

La table terme → ancre doit donc être extraite du source de la spécification
2023, dans `sdw-sosa-ssn`, comme le fait déjà `check_repository.ldpy` pour
vérifier que chaque terme est documenté.

## Proposition

`place_namespace_files.py` gagne un second métier : produire, pour chaque
namespace servi, le bloc de règles de termes, à partir des ontologies qu'il
place et des ancres qu'il lit dans la spécification. Le bloc est délimité :

```apache
# BEGIN generated term rules — place_namespace_files.py, do not edit by hand
…
# END generated term rules
```

Le reste du `.htaccess` reste écrit et relu à la main.

## Ce que ça casse dans les tests existants

La règle 4 change le comportement attendu de plusieurs cas déjà écrits par Bert
Bos, qui vérifient qu'un terme inventé redirige vers la spécification :
`/x?y`, `/x/y`, `/?foo` et leurs variantes selon le `Accept` — numéros 9, 10,
11, 21, 22, 23, 33, 34 dans `ssn/regression-tests.sh`. Ils doivent devenir des
attentes de 404. **À signaler explicitement dans la pull request** : c'est un
changement de comportement voulu, pas une régression.

## Ce qui reste à trancher

1. L'équipe du W3C acceptera-t-elle un bloc généré dans un `.htaccess` du dépôt
   `ns` ? Si non, il faut se rabattre sur les fichiers témoins, ou renoncer au
   404 et n'en garder que la redirection vers la bonne édition.
2. Les termes propres à 2017 redirigent vers `https://www.w3.org/TR/vocab-ssn/`,
   qui reste la REC 2017 après la publication de 2023. À confirmer le jour où
   les deux éditions sont publiées.
3. `…/ns/sosa/hasSampledFeature` : 2023 ne le déclare plus. Redirige-t-il vers
   la définition de 2017, ou vers ce qui le remplace en 2023 ?
