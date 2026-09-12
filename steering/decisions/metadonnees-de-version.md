# Faire savoir en RDF qu'une édition plus récente existe

Tranché le 2026-09-12 : on suit le précédent DCAT, et on déprécie ce que 2023
ne sert plus. Appliqué à l'édition 2017 dans ce dépôt ; l'édition 2023 suivra
par pull request sur `sdw-sosa-ssn`, qui expliquera l'approche au WG.

## Les IRI de version

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

## Ce qui a été écrit dans l'édition 2017

À chaque module :

```turtle
sosa: a owl:Ontology ;
  owl:versionIRI <http://www.w3.org/ns/sosa/2017/> ;
  dcat:version "2017" ;
  dcat:hasVersion <http://www.w3.org/ns/sosa/2017/> , <http://www.w3.org/ns/sosa/2023/> ;
  dcat:hasCurrentVersion <http://www.w3.org/ns/sosa/2023/> ;
  ...
```

Et, pour un module dont l'édition 2023 ne sert plus l'IRI d'ontologie, la
dépréciation, avec son successeur quand il y en a un :

```turtle
sosa:om a owl:Ontology ;
  dcat:hasCurrentVersion <http://www.w3.org/ns/sosa/2017/om> ;
  dcterms:isReplacedBy <http://www.w3.org/ns/sosa/oms/> ;
  owl:deprecated true ;
  ...
```

**La règle appliquée** : une ontologie de 2017 dont l'IRI n'est plus servie par
l'édition 2023 est dépréciée. Quatre modules le sont — `ssn:ext`, `sosa:om`,
`ssn:dul` et `ssn:systems/` — et les trois derniers nomment leur successeur.
Lu autrement, « ce qui n'a pas de suite en 2023 » aurait pu ne désigner que
`ssn:ext` et `sosa:om` ; `ssn:dul` et `ssn:systems/` ont bien un successeur,
mais sous une autre IRI, et un client qui résout l'ancienne doit l'apprendre.

Du côté 2023, ce qu'OWL sait déjà exprimer viendra en plus :

```turtle
  owl:priorVersion <http://www.w3.org/ns/sosa/2017/> ;
  dcat:previousVersion <http://www.w3.org/ns/sosa/2017/> ;
```

`owl:backwardCompatibleWith` est à envisager là où la compatibilité est réelle —
la transition annonce que 2023 « adds features while remaining compatible » —
mais module par module, pas en bloc : `ssn/systems/` et `ssn/dul` ont changé de
namespace en 2023, et `sosa/om` a été remplacé par `sosa/oms/`.

## Ce que ça a coûté, et ce que ça coûtera

- Sur 2017 : fait. Neuf modules, vingt fichiers, chaque énoncé relu dans le
  graphe reparsé. Le préfixe déjà lié à un namespace dans un document est
  réutilisé plutôt que doublé — `om.rdf` lie `dcterms:` sous le préfixe `dc:`.
- Sur 2023 : rien ici. Ces fichiers appartiennent à `sdw-sosa-ssn` et ne
  s'éditent pas dans ce dépôt ; il faut une PR là-bas, et une resynchronisation.
- `dcat:hasCurrentVersion` sur l'édition 2017 devra être mis à jour à chaque
  nouvelle édition. C'est le prix d'un pointeur vers l'avant, et DCAT le paie.

## Ce qui reste

La pull request sur `sdw-sosa-ssn` : `dcat:version "2023"`, les deux éditions
en `dcat:hasVersion`, `dcat:hasCurrentVersion`, et ce qu'OWL exprime —
`owl:priorVersion`, et `owl:backwardCompatibleWith` là où la compatibilité est
réelle, module par module. C'est elle qui soumet l'approche au WG, dépréciation
comprise : marquer `owl:deprecated true` des graphes publiés avec une REC change
leur sémantique, et c'est au WG de l'assumer.