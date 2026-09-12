# Faire savoir en RDF qu'une édition plus récente existe

Question ouverte, posée le 2026-09-11. `owl:versionIRI` est en place ; ce
document traite de ce qui va au-delà.

## Ce qui est fait

Les neuf ontologies de 2017 déclarent désormais leur IRI de version, dans
chacune de leurs sérialisations :

| Fichier | IRI d'ontologie | IRI de version |
|---|---|---|
| `sosa/2017/sosa.ttl` | `…/ns/sosa/` | `…/ns/sosa/2017/` |
| `ssn/2017/ssn.ttl` | `…/ns/ssn/` | `…/ns/ssn/2017/` |
| `sosa/2017/sampling/sosa-sampling.ttl` | `…/ns/sosa/sampling/` | `…/ns/sosa/2017/sampling/` |
| `ssn/2017/systems/ssn-system.ttl` | `…/ns/ssn/systems/` | `…/ns/ssn/2017/systems/` |
| `ssn/2017/ext/ssn-ext.ttl` | `…/ns/ssn/ext` | `…/ns/ssn/2017/ext` |
| `sosa/2017/oboe.ttl` | `…/ns/sosa/oboe` | `…/ns/sosa/2017/oboe` |
| `sosa/2017/om.ttl` | `…/ns/sosa/om` | `…/ns/sosa/2017/om` |
| `sosa/2017/prov/sosa-prov.ttl` | `…/ns/sosa/prov` | `…/ns/sosa/2017/prov` |
| `ssn/2017/dul.ttl` | `…/ns/ssn/dul` | `…/ns/ssn/2017/dul` |

## Ce qui manque, et le problème que ça pose

OWL sait dire « je suis la version X de l'ontologie Y » et, pour une ontologie
récente, « j'en remplace une plus ancienne » (`owl:priorVersion`,
`owl:backwardCompatibleWith`). Il ne sait **pas** dire l'inverse : rien, dans le
vocabulaire OWL, ne permet à l'édition 2017 de signaler qu'une édition 2023
existe. Or c'est exactement ce qu'on veut faire pour orienter les utilisateurs.

## Le précédent, dans ce dépôt même

DCAT vit la même situation ici, et la traite ainsi (`dcat2.ttl`, `dcat3.ttl`) :

- les deux fichiers déclarent la **même** IRI d'ontologie, `…/ns/dcat` ;
- chacun porte `dcat:version "2"` / `"3"` ;
- chacun énumère les éditions par `dcat:hasVersion <…/ns/dcat2014>`,
  `<…/ns/dcat2>`, `<…/ns/dcat3>` ;
- chacun désigne l'édition courante par
  `dcat:hasCurrentVersion <…/ns/dcat3>` ;
- l'édition 3 désigne la précédente par `dcat:previousVersion <…/ns/dcat2>` ;
- une note en langue naturelle (`owl:versionInfo` en DCAT 2,
  `adms:versionNotes` en DCAT 3) dit d'où vient la copie.

C'est un précédent qui compte : même dépôt, même serveur, même problème, et un
vocabulaire — DCAT — que le W3C recommande pour ça.


oui, parfait, faire de même.


## Proposition

Ajouter à chaque module, des deux éditions :

```turtle
sosa: a owl:Ontology ;
  owl:versionIRI <http://www.w3.org/ns/sosa/2017/> ;
  dcat:version "2017" ;
  dcat:hasVersion <http://www.w3.org/ns/sosa/2017/> , <http://www.w3.org/ns/sosa/2023/> ;
  dcat:hasCurrentVersion <http://www.w3.org/ns/sosa/2023/> ;
  ...
```

et, du côté 2023 seulement, ce qu'OWL sait déjà exprimer :

```turtle
  owl:priorVersion <http://www.w3.org/ns/sosa/2017/> ;
  dcat:previousVersion <http://www.w3.org/ns/sosa/2017/> ;
```

`owl:backwardCompatibleWith` est à envisager là où la compatibilité est réelle —
la transition annonce que 2023 « adds features while remaining compatible » —
mais module par module, pas en bloc : `ssn/systems/` et `ssn/dul` ont changé de
namespace en 2023, et `sosa/om` a été remplacé par `sosa/oms/`.

## Ce que ça coûte

- Sur 2017 : neuf modules, quatre sérialisations pour `ssn-ext`, deux pour les
  autres. L'ajout est mécanique, comme l'a été `owl:versionIRI`.
- Sur 2023 : rien ici. Ces fichiers appartiennent à `sdw-sosa-ssn` et ne
  s'éditent pas dans ce dépôt ; il faut une PR là-bas, et une resynchronisation.
- `dcat:hasCurrentVersion` sur l'édition 2017 devra être mis à jour à chaque
  nouvelle édition. C'est le prix d'un pointeur vers l'avant, et DCAT le paie.

## Ce qui reste à trancher

1. Va-t-on au-delà de `owl:versionIRI` ? Si oui, la proposition DCAT ci-dessus
   ou autre chose ?
2. Si oui, est-ce que cela se fait dans le même mouvement pour 2017 (ici) et
   pour 2023 (PR sur `sdw-sosa-ssn`), ou est-ce qu'on livre 2017 d'abord ?

   oui. 2017 ici et 2023 par PR, qui explique l'approche

3. Est-ce que le WG veut, en plus, une dépréciation explicite de ce qui n'a pas
   de suite en 2023 — `ssn:ext`, `sosa:om` — par `owl:deprecated true` ?
   Attention : cela change la sémantique de fichiers publiés avec une REC.

je veux. on proposera au WG par PR, qui tranchera.