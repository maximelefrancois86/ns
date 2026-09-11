# Modifier la REC 2017 : quelle voie ?

Analyse du 2026-09-11. Répond à la question 3 de `next.md`. La décision finale
revient au WG ; ce document dit ce que chaque voie coûte et ce qu'elle permet.

## Le point de départ, corrigé

- **`w3c/sdw` gh-pages `ssn/index.html` n'est pas la REC.** C'est la source
  ReSpec de l'*editor's draft*. La REC publiée est un instantané HTML statique
  de 673 Ko à `/TR/2017/REC-vocab-ssn-20171019/`, généré par ReSpec en 2017 et
  gelé depuis. **Modifier gh-pages ne change rien à ce que sert `/TR/`.**
  Les deux livrables sont donc distincts, pas alternatifs.
- **Il n'y a rien à restaurer depuis l'historique.** `ssn/index-ssn.html`
  (458 Ko) est déjà dans le dépôt et identique octet pour octet à
  `60c08b65:ssn/index.html` (même md5 `541504051c97…`). Il a été ajouté par le
  commit `a098aaa` au moment où `index.html` est devenu une page de redirection.
- `ssn/index.html` sert aujourd'hui une page qui redirige en 5 s vers l'ED de
  2023, alors que la REC 2017 annonce
  `Latest editor's draft: https://w3c.github.io/sdw/ssn/`. Un lecteur de la REC
  2017 qui suit ce lien atterrit sur le brouillon de 2023.

## Ce que le process autorise

### Modification in-place

[Politique de l'équipe Communications][republishing]. Sur une REC, à tout
moment, sont permis :

- markup cassé, **liens cassés**, feuilles de style ;
- « Some visible status updates, such as indicating newer versions ».

Et rien d'autre : « no in-place changes to the text of a document, besides some
visible status updates, are permitted, **however minor** ».

Obligations : la date du titre ne change pas, une date de *reprinting* s'ajoute
à côté, la section de statut décrit la nature des changements. La demande part
au Webmaster, en copie project management lead, `webreq` et `w3t-comm`, avec
(1) la liste détaillée des changements et (2) le document révisé.

**Précédent dans ce document même.** Le h2 de la REC 2017 est déjà
« W3C Recommendation 19 October 2017 (Link errors corrected 08 December 2017) »,
et son SOTD s'ouvre sur « Status update (December 2017): The following links
were targeting wrong resources and have been corrected… ». La REC 2017 a donc
déjà subi une modification in-place, sur exactement ce motif.

**Précédent du bandeau jaune.** Le gabarit HTML de
`vocab-ssn-2023-transition.md` est copié du `sparql11_notice` de
[SPARQL 1.0][sparql] : « New Version Available: SPARQL 1.1 (Document Status
Update, 26 March 2013) ». Même motif sur [OWL Reference][owlref] (OWL 2, 2009)
et [RDF Test Cases][rdftc] (RDF 1.1, 2014). Dans le cas SPARQL, **seul le
bandeau a été ajouté** — la ligne de date du titre n'a pas bougé.

### Republication en REC révisée, changements éditoriaux

[Process][process] § 6.2.3 (classes de changements) et § 6.3.10.1. Les classes 1
et 2 sont éditoriales ; la classe 2 couvre les changements « that do not affect
conformance ». La table des transitions donne :
« Publish revised Recommendation with editorial changes → **WG Decision
(editorial)** » — pas de Team Approval, pas d'AC review, pas de retour à une
étape antérieure. Produit une **nouvelle REC datée**.

Le WG a qualité pour le faire : la [charte][charte] (6 février 2025 –
6 février 2027) met dans son périmètre « Maintain and update the SSN Ontology,
including the SOSA vocabulary ».

### Superseded — non

§ 6.3.12.3 et 6.3.12.4 : déclarer une REC *Superseded* exige une AC review, et
la politique in-place interdit de modifier en place un document superseded. Ce
n'est de toute façon pas ce qu'on veut : les deux éditions restent des REC, et
2023 est un technical report distinct (shortname `vocab-ssn-2023`), ce qui est
la voie prévue par § 6.3.10.3 pour ajouter des fonctionnalités.

## Tri des changements demandés

| Changement voulu | Voie |
|---|---|
| Bandeau « New Version Available … Document Status Update » | **in-place** — cas explicitement permis |
| Supprimer le « Latest editor's draft » erroné | **in-place** — lien erroné |
| Retargeter les liens « An ontology graph for this is available » (§ 5.1, 5.2, 6.1, 6.3, 6.4, 6.5) vers les IRI de version `/2017/` | **in-place** — « links targeting wrong resources », cas de décembre 2017 |
| Les `div.warning` de § 5.1, 5.2, 6.1 à 6.5 | **hors in-place** — texte nouveau |
| Réécriture de l'Abstract et de § 4.1 (IRI d'ontologie vs IRI de version) | **hors in-place** — texte nouveau |

Le retargetage des liens mérite d'être souligné : il ne devient pas seulement
souhaitable, il devient **nécessaire** le jour où `w3c/ns` fait rediriger
`/ns/sosa/sampling/` vers l'édition 2023. Ce jour-là, les liens de la REC 2017
désignent un autre document que celui qu'ils sont censés désigner — c'est
littéralement le motif invoqué en décembre 2017.

## Deux contraintes d'ordonnancement

1. **Le bandeau ment encore.** Il affirme que le WG « has produced a W3C
   Recommendation ». `vocab-ssn-2023` est un **Working Draft du 10 septembre
   2026** (`/TR/2026/WD-vocab-ssn-2023-20260910/`). Les trois précédents sont
   tous postérieurs à la publication de la nouvelle REC. La demande part donc au
   moment de la transition REC de 2023, pas avant.
2. **Les IRI citées doivent résoudre avant d'être citées.** Aujourd'hui
   `/ns/sosa/2017/…` n'existe pas. La PR `w3c/ns` passe en premier.

## Recommandation : trois livrables, pas une alternative

1. **PR sur `w3c/sdw` gh-pages** — indépendante, faisable tout de suite, aucun
   process W3C. Rendre l'ED honnête : `index.html` redevient le texte 2017
   complet (le fichier est déjà là). Ça répare le lien « Latest editor's draft »
   de la REC sans rien demander à personne.
2. **Demande de modification in-place** au Webmaster, au moment de la transition
   REC de 2023 : bandeau + corrections de liens + paragraphe « Status update »
   en tête du SOTD + date de reprinting. Aucune transition à demander.
3. **Si le WG tient aux `div.warning` et à la réécriture de § 4.1** :
   republication en REC révisée éditoriale (WG Decision + update request).
   Sinon, ce contenu va dans l'**errata**
   (`https://www.w3.org/2017/10/vocab-ssn-errata.html`, source `ssn/errata.html`
   dans `w3c/sdw`), que le WG maintient sans process. À noter : la copie du
   dépôt est très légèrement en retard sur la page en ligne (deux liens passés
   de `http:` à `https:`).

## Point pratique qui compte

Le fichier à fournir au Webmaster est une **copie modifiée de l'instantané
publié** (les 673 Ko de `/TR/2017/REC-vocab-ssn-20171019/`), **pas** la source
ReSpec de 458 Ko. Rejouer ReSpec sur la source regénérerait un en-tête à la date
du jour avec le boilerplate courant, ce qui détruirait l'en-tête REC gelé que la
politique in-place impose de préserver.

## Ce qui reste à trancher

Voie 3 ou errata ? Autrement dit : est-ce que le WG veut une nouvelle REC datée
pour porter les avertissements et la clarification IRI d'ontologie / IRI de
version, ou est-ce que le bandeau plus une entrée d'errata suffisent ?

[republishing]: https://www.w3.org/guide/standards-track/republishing
[process]: https://www.w3.org/policies/process/
[charte]: https://www.w3.org/2024/11/sdw-wg-charter.html
[sparql]: https://www.w3.org/TR/2008/REC-rdf-sparql-query-20080115/
[owlref]: https://www.w3.org/TR/owl-ref/
[rdftc]: https://www.w3.org/TR/rdf-testcases/
