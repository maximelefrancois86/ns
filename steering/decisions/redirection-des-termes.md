# Servir les IRI de terme : la dernière édition qui les déclare, ou 404

Tranché et mis en œuvre le 2026-09-12. La politique posait les règles
([[politique-de-redirection]], règles 3 et 4) ; ce document dit comment elles
sont servies, et ce qu'il a fallu décider en chemin.

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

## Ce qui a été fait

Le script de placement est devenu `publish_namespace.py` : il place les
fichiers **et** écrit les règles qui les servent, des mêmes sources. Pour
chaque namespace, un bloc délimité dans son `.htaccess` :

```apache
# BEGIN generated term rules — ssn/scripts/publish_namespace.py
…
# END generated term rules
```

Le reste de `sosa/.htaccess` et `ssn/.htaccess` est écrit et relu à la main.
Les `.htaccess` de l'arbre `2023/`, eux, sont entièrement écrits par le script :
ils ne font que de la négociation de contenu, à l'identique d'un module à
l'autre.

Trois choix de mise en œuvre valent d'être signalés.

**Un seul `.htaccess` par namespace, pas un par module.** Le premier jet créait
un dossier et un `.htaccess` par module — `sosa/act/`, `sosa/oms/`, `sosa/prov/`.
C'était une impasse : pour une IRI sans barre oblique finale comme
`…/ns/sosa/prov`, Apache entre dans le dossier `prov/`, et là mod_rewrite ne
peut plus retirer le préfixe du répertoire, donc aucune règle ne s'applique ;
mod_dir répond alors par un **301** vers la même URL avec une barre oblique —
exactement la redirection permanente que la règle 2 interdit. Les règles d'un
namespace vivent donc toutes dans son propre `.htaccess`, le chemin du module
dans le motif : `^oms/(…)$`. Aucun dossier intermédiaire, aucun mod_dir, et
`DirectorySlash` n'a pas à être touché. Dans le même mouvement, les deux modules
de 2017 dont l'IRI n'a pas de barre oblique finale — `sosa/prov`, `ssn/ext` —
sont devenus des fichiers plats, comme `sosa/oboe` l'a toujours été et comme
`publish_namespace.py` place déjà leurs équivalents de 2023.

**Les redirections internes sont relatives à la racine.** `/ns/sosa/2023/obs/`,
pas `https://www.w3.org/ns/sosa/2023/obs/` : Apache complète avec l'hôte
demandé, donc les mêmes règles servent `www.w3.org` et le conteneur de test.
Seules les redirections vers la spécification sont absolues.

**Les URL de fichiers d'hier continuent de répondre.** `…/ns/sosa/sosa.ttl`,
`…/ns/ssn/systems/ssn-system.ttl` et leurs semblables sont les fichiers de
l'édition 2017 : une règle les redirige vers le même chemin sous `2017/`, où
les règles de cette édition répondent. Rien de ce qui était servi ne disparaît.

## Ce que ça a changé dans les tests existants

La règle 4 change le comportement attendu de cas déjà écrits par Bert Bos, qui
vérifiaient qu'un terme inventé redirige quand même vers la spécification.
Chaque cas modifié porte désormais un commentaire `# CHANGED` qui dit pourquoi :
huit dans `sosa/regression-tests.sh`, neuf dans `ssn/regression-tests.sh`.
**À signaler explicitement dans la pull request** : c'est un changement de
comportement voulu, pas une régression.

Deux familles :

- un terme inventé — `/x?y`, `/x/y` — renvoie 404 au lieu d'une ancre inventée ;
- le nom de fichier nu — `/sosa`, `/ssn` — renvoie 404, parce que le fichier
  n'est plus servi depuis l'IRI du namespace mais depuis celle de son édition.
  `/sosa.ttl` et `/ssn.ttl`, eux, répondent toujours.

Les quatre `regression-tests.sh` des sous-dossiers ont été supprimés : leurs
dossiers n'ont plus de `.htaccess` propre, et leurs cas sont repris dans les
deux fichiers de namespace, qui couvrent désormais les deux éditions.

## Les termes que la spécification 2023 n'ancre pas

27 termes déclarés par l'édition 2023 n'y ont pas de section à eux : les 22
termes `ssn:` — **tous** les termes que ce namespace garde en 2023 sont dans son
module déprécié — les trois `sosa:` dépréciés, et deux termes de l'alignement
PROV. Un lecteur envoyé vers la spécification 2023 n'y trouverait pas le terme
qu'il a cliqué.

La règle appliquée : **à défaut d'ancre dans l'édition la plus récente, on
renvoie vers la dernière édition qui documente le terme.** `…/ns/ssn/System`
mène donc à `…/TR/vocab-ssn/#SSNSystem`, où le terme est bien défini, tandis que
son graphe reste celui de 2023. Les deux termes PROV, qu'aucune édition
n'ancre, mènent à la spécification 2023 sans fragment.

Le vrai correctif est en amont : que la spécification 2023 documente ses termes
dépréciés. C'est une question pour le WG.

## Ce qui reste à trancher

1. L'équipe du W3C acceptera-t-elle un bloc généré dans un `.htaccess` du dépôt
   `ns` ? Les règles tiennent en 60 lignes pour `sosa`, 33 pour `ssn`, et une
   alternance par module. Si la réponse est non, il faut se rabattre sur des
   fichiers témoins, ou renoncer au 404.
2. Les termes propres à 2017 renvoient vers `https://www.w3.org/TR/vocab-ssn/`,
   qui reste la REC 2017 après la publication de 2023. À confirmer le jour où
   les deux éditions sont publiées.
3. `…/ns/sosa/hasSampledFeature`, que 2023 ne déclare plus, fait l'objet d'une
   issue à ouvrir sur `sdw-sosa-ssn` : proposer de le placer dans le module des
   termes dépréciés de SOSA. En attendant, il sert sa définition de 2017 — et
   son graphe est celui du module SSN extensions, qui le déclarait.
