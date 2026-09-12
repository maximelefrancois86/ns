# Ce que les IRI doivent servir, édition par édition

Tranché le 2026-09-12. Relevé initial du 2026-09-11, extrait de
`vocab-ssn-2023-transition.md`. Ce brouillon n'existe plus : ce qu'il demandait
à la spécification 2017 est repris, complété et tranché dans
[[modification-de-la-rec-2017]] ; ne restent ci-dessous que ses conséquences
pour `w3c/ns`.

## Les quatre règles

1. **Une IRI d'ontologie sert l'édition courante.** Sans exception : `oboe` et
   `prov` comprises, que la transition prétendait ancrer sur 2017.
2. **Jamais de redirection permanente.** Que du temporaire — 302 vers une page,
   303 vers une ressource. Une édition de 2054 pourrait rétablir un module
   abandonné en 2023 sous son IRI d'origine ; un 301 mis en cache chez les
   clients rendrait ce rétablissement invisible.
3. **Une IRI de terme sert la dernière édition qui déclare ce terme.** Un client
   qui demande `text/html` est redirigé vers l'ancre où cette édition définit le
   terme.
4. **Une IRI de terme inconnue renvoie 404**, quel que soit le `Accept`.

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
| `/ns/ssn/systems/` | `/ns/ssn/2017/systems/` | — le module est passé sous `/ns/sosa/systems/` | vers 2017, sa dernière édition |
| `/ns/ssn/dul` | `/ns/ssn/2017/dul` | — l'alignement est passé sous `/ns/sosa/dul` | vers 2017, sa dernière édition |
| `/ns/sosa/om` | `/ns/sosa/2017/om` | — remplacé par `/ns/sosa/oms/` (OMS, ISO 19156:2023) | vers 2017, sa dernière édition |
| `/ns/sosa/oboe` | `/ns/sosa/2017/oboe` | `/ns/sosa/2023/oboe` | vers l'édition courante |
| `/ns/sosa/prov` | `/ns/sosa/2017/prov` | `/ns/sosa/2023/prov` | vers l'édition courante |
| `/ns/ssn/ext` | `/ns/ssn/2017/ext` | — pas d'équivalent 2023 | vers 2017, sa dernière édition |

Les modules nouveaux en 2023 (`sosa/act/`, `sosa/obs/`, `sosa/sam/`,
`sosa/common/`, `sosa/dep/`, `sosa/oms/`, `sosa/systems/`, `sosa/dul`,
`sosa/bfo`, `sosa/dolce`, `sosa/ido`, `sosa/saref`, les deux vocabulaires de
propriétés, et leurs jumeaux `ssn/`) n'existent que sous 2023 : leur IRI
d'ontologie sert l'édition courante, sans redirection permanente.

## Pourquoi oboe et prov suivent l'édition courante

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

**C'est le point 3 de ces sections qui est une erreur de rédaction dans
`vocab-ssn-2023-transition.md`.** L'IRI d'ontologie suit l'édition courante,
comme pour tous les autres modules ; le texte de la REC 2017 doit pointer vers
`…/2017/oboe` et `…/2017/prov`, ce que le point 2 de ces mêmes sections demande
déjà. L'état de `sosa/.htaccess` hérité du premier jet applique la lecture
contraire : il est à refaire.

## Détail qui compte pour les règles de réécriture

Quatre IRI d'ontologie de 2017 n'ont **pas** de barre oblique finale —
`…/sosa/oboe`, `…/sosa/om`, `…/sosa/prov`, `…/ssn/dul`, `…/ssn/ext` — alors que
`…/sosa/`, `…/ssn/`, `…/sosa/sampling/` et `…/ssn/systems/` en ont une. C'est ce
que déclarent les fichiers, vérifié le 2026-09-11.

Deux d'entre elles sont servies depuis un **dossier** malgré l'absence de barre
oblique : `sosa/2017/prov/sosa-prov.ttl` et `ssn/2017/ext/ssn-ext.ttl`. Une
requête sur l'IRI de version `…/ns/sosa/2017/prov` tombe donc sur un répertoire,
et Apache y répond par défaut par une redirection 301 vers `…/prov/`
(`DirectorySlash`). Il faut soit désactiver ce comportement dans le `.htaccess`,
soit l'assumer et le tester : l'IRI de version doit résoudre telle qu'elle est
publiée. **Tranché : on assume la redirection d'Apache, et on la teste.**

En 2023, `sosa-prov` déclare la même IRI sans barre oblique mais est servi comme
un fichier plat, `sosa/2023/prov.ttl`, à la manière de `sosa/oboe` en 2017 : pas
de dossier, donc pas de question.

## Redirection des IRI de terme

Règles 3 et 4 ci-dessus. Ce qu'elles coûtent à mettre en œuvre, et comment, est
instruit dans [[redirection-des-termes]] : elles demandent que le serveur
connaisse la liste des termes de chaque édition, ce que les règles génériques
d'aujourd'hui ne font pas.