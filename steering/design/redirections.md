# Ce que les IRI doivent servir, édition par édition

Relevé du 2026-09-11, extrait de `vocab-ssn-2023-transition.md` avant sa
suppression d'ici. Le document lui-même vit désormais dans `../sdw` : il décrit
ce qu'il faut écrire dans la spécification 2017. Ne restent ci-dessous que les
conséquences pour `w3c/ns`.

## Le principe

- Une **IRI d'ontologie** (`…/ns/sosa/sampling/`) désigne le module, toutes
  éditions confondues, et sert l'édition courante.
- Une **IRI de version** (`…/ns/sosa/2017/sampling/`) désigne une édition
  précise et ne bouge plus jamais.

## Ce que la transition demande, module par module

| IRI d'ontologie | 2017 | 2023 | Redirection demandée |
|---|---|---|---|
| `/ns/sosa/` | `/ns/sosa/2017/` | `/ns/sosa/2023/` | vers l'édition courante |
| `/ns/ssn/` | `/ns/ssn/2017/` | `/ns/ssn/2023/` | vers l'édition courante |
| `/ns/sosa/sampling/` | `/ns/sosa/2017/sampling/` | `/ns/sosa/2023/sampling/` | vers l'édition courante |
| `/ns/ssn/systems/` | `/ns/ssn/2017/systems/` | — le module est passé sous `/ns/sosa/systems/` | **permanente vers 2017** |
| `/ns/ssn/dul` | `/ns/ssn/2017/dul` | — l'alignement est passé sous `/ns/sosa/dul` | **permanente vers 2017** |
| `/ns/sosa/om` | `/ns/sosa/2017/om` | — remplacé par `/ns/sosa/oms/` (OMS, ISO 19156:2023) | **permanente vers 2017** |
| `/ns/sosa/oboe` | `/ns/sosa/2017/oboe` | `/ns/sosa/2023/oboe` | **à trancher, voir ci-dessous** |
| `/ns/sosa/prov` | `/ns/sosa/2017/prov/` | `/ns/sosa/2023/prov` | **à trancher, voir ci-dessous** |
| `/ns/ssn/ext/` | `/ns/ssn/2017/ext/` | — pas d'équivalent 2023 | **permanente vers 2017** |

Les modules nouveaux en 2023 (`sosa/act/`, `sosa/obs/`, `sosa/sam/`,
`sosa/common/`, `sosa/dep/`, `sosa/oms/`, `sosa/systems/`, `sosa/dul`,
`sosa/bfo`, `sosa/dolce`, `sosa/ido`, `sosa/saref`, les deux vocabulaires de
propriétés, et leurs jumeaux `ssn/`) n'existent que sous 2023 : leur IRI
d'ontologie sert l'édition courante, sans redirection permanente.

## La question à trancher : oboe et prov

`vocab-ssn-2023-transition.md` demande, pour ces deux alignements, deux choses
qui se contredisent :

- section 6.4 et 6.5, point 2 : présenter `…/ns/sosa/oboe` comme l'**IRI
  d'ontologie** du module, et `…/ns/sosa/2017/oboe` comme l'IRI de version de
  l'édition 2017 ;
- même sections, point 3 : mettre une redirection **permanente** de
  `…/ns/sosa/oboe` vers `…/ns/sosa/2017/oboe`.

Or l'édition 2023 met bien à jour ces deux alignements : `sosa-oboe.ttl` et
`sosa-prov.ttl` existent dans `sdw-sosa-ssn` et déclarent précisément
`…/ns/sosa/oboe` et `…/ns/sosa/prov`. Si l'IRI d'ontologie redirige en
permanence vers 2017, l'alignement 2023 n'est atteignable que par son IRI de
version, et l'IRI qu'il déclare lui-même sert un autre document que lui.

Les deux lectures possibles :

1. **L'IRI d'ontologie suit l'édition courante**, comme pour `sampling`. Le
   point 3 de la transition est une erreur de rédaction, et le texte de la REC
   2017 doit pointer vers `…/2017/oboe`, ce que son point 2 fait déjà.
2. **Ces deux alignements restent ancrés sur 2017.** Il faut alors que la spec
   2023 cite ses alignements par leur IRI de version, et que les fichiers de
   `sdw-sosa-ssn` déclarent une IRI d'ontologie distincte.

La lecture 1 est cohérente avec tout le reste du document et avec ce que
déclarent les fichiers ; c'est elle qui est appliquée tant que le WG n'a pas
tranché. L'état actuel de `sosa/.htaccess` applique la lecture 2, héritée d'une
lecture littérale du point 3.

## Détail qui compte pour les règles de réécriture

En 2017, `sosa-prov` est servi depuis un **dossier** : son IRI est
`…/ns/sosa/prov/`, avec la barre oblique finale. En 2023, le fichier déclare
`…/ns/sosa/prov`, **sans** barre oblique, et il est donc servi comme un fichier
plat, à la manière de `sosa/oboe` en 2017. Les deux formes doivent résoudre.
