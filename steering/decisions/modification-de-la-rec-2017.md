# Modifier la REC 2017 : tout passe par le bandeau de statut

Décidé le 2026-09-11. Remplace `vocab-ssn-2023-transition.md` de `w3c/sdw`,
supprimé à cette date.

> **Mise à jour du 2026-09-12.** Les deux voies écartées ci-dessous ont été
> matérialisées dans `w3c/sdw` pour que le WG compare sur pièces, et non sur
> description : branches `vocab-ssn-2017-errata` et
> `vocab-ssn-2017-editorial`. Ce que leur écriture a appris est reporté plus
> bas, sous « Ce que les deux branches ont montré ». La décision ci-dessous
> tient tant que le WG n'a pas tranché autrement.

## La décision

La REC 2017 est modifiée **en place uniquement**, par une seule demande au
Webmaster. Tout le contenu qu'on voulait faire porter par des `div.warning` dans
le corps du document est porté par un `<details>/<summary>` **à l'intérieur du
bandeau « New Version Available »**. Le corps du document n'est pas touché, sauf
pour des corrections de liens.

Conséquence : ni republication en REC révisée, ni entrée d'errata. Une seule
demande, un seul instant de publication.

## Pourquoi

### Ce que la politique in-place autorise

[Politique de l'équipe Communications][republishing]. Sur une REC, à tout
moment : markup cassé, **liens cassés**, feuilles de style, et « *some visible
status updates, such as indicating newer versions* ». Et rien d'autre :
« *no in-place changes to the text of a document, besides some visible status
updates, are permitted, **however minor*** ».

Des `div.warning` insérées dans § 5.1, § 5.2 et § 6.1 à 6.5, ou une réécriture
de l'Abstract et de § 4.1, sont du texte nouveau dans le corps : hors périmètre.
Le même contenu placé dans le bandeau de statut reste une *visible status
update*. C'est le même texte, au seul endroit où la politique le laisse passer.

### Ce qu'on évite

La voie alternative était la republication en REC révisée avec changements
éditoriaux ([Process][process] § 6.2.3 classe 2 et § 6.3.10.1 : WG Decision
seule, sans Team Approval ni AC review, la [charte][charte] 2025-2027 couvrant
« *Maintain and update the SSN Ontology* »). Elle produit une nouvelle REC
datée — un objet de plus à maintenir pour du contenu purement informatif. La
voie errata ne touche que ceux qui cliquent.

**Réserve, à assumer :** les précédents cités plus bas tiennent en trois phrases
dans le bandeau, là où le nôtre porte une liste module par module. On reste dans
la classe permise, mais c'est l'interprétation la plus large qu'on en ait vue.
Le point est à soumettre à Bert Bos avec la demande, pas à découvrir après.

### Les précédents

**Dans ce document même.** Le h2 de la REC 2017 est déjà « *W3C Recommendation
19 October 2017 (Link errors corrected 08 December 2017)* », et son SOTD s'ouvre
sur « *Status update (December 2017): The following links were targeting wrong
resources and have been corrected…* ». La REC 2017 a donc déjà été modifiée en
place, exactement sur ce motif.

**Le bandeau jaune.** Le gabarit est celui du `sparql11_notice` de
[SPARQL 1.0][sparql] : « *New Version Available: SPARQL 1.1 (Document Status
Update, 26 March 2013)* ». Même motif sur [OWL Reference][owlref] (2009) et
[RDF Test Cases][rdftc] (2014). Dans le cas SPARQL, seul le bandeau a été
ajouté ; la ligne de date du titre n'a pas bougé.

## Ce que ça implique

### Le calendrier : synchronisation, pas blocage

Le bandeau affirme que le WG « *has produced a W3C Recommendation* », alors que
`vocab-ssn-2023` est un Working Draft (`/TR/2026/WD-vocab-ssn-2023-20260910/`).
C'est la poule et l'œuf : on **anticipe** en rédigeant, et l'acceptation
formelle de la demande et la publication de la REC 2023 tombent au même moment.
La demande au Webmaster est donc prête et datée d'avance, et part avec la
transition.

Même chose pour les IRI `…/2017/…` citées par le bandeau : elles doivent
résoudre le jour de la publication, pas avant. C'est le travail en cours dans
`w3c/ns`.

### Le fichier à fournir

Une **copie modifiée de l'instantané publié** — les 673 Ko de
`/TR/2017/REC-vocab-ssn-20171019/` — et **pas** la source ReSpec de 458 Ko de
`w3c/sdw`. Rejouer ReSpec regénérerait un en-tête à la date du jour avec le
boilerplate courant, ce qui détruirait l'en-tête REC gelé que la politique
impose de préserver. Le document est en `<!DOCTYPE html>`, donc `<details>`
passe sans réserve.

La demande part au Webmaster, en copie project management lead, `webreq` et
`w3t-comm`, avec (1) la liste détaillée des changements et (2) le document
révisé. La date du titre ne change pas ; une date de *reprinting* s'ajoute à
côté ; le SOTD décrit la nature des changements.

### Le « Latest editor's draft » erroné se répare ailleurs

L'en-tête de la REC annonce `Latest editor's draft: https://w3c.github.io/sdw/ssn/`,
qui redirige aujourd'hui en 5 s vers l'ED de 2023. Inutile de toucher à la REC :
restaurer le texte 2017 complet dans `w3c/sdw` `gh-pages` `ssn/index.html` rend
le lien juste à nouveau. `ssn/index-ssn.html` y est déjà, identique octet pour
octet à `60c08b65:ssn/index.html`. Cette PR-là ne demande aucun process W3C et
peut partir tout de suite ; la page restaurée doit porter le même bandeau,
sans quoi on supprime le seul panneau qui signale l'édition 2023.

## Les corrections de liens dans le corps

Seuls sont touchés les liens qui désignent un **document** (un graphe). Les IRI
de termes et les IRI d'ontologie **affichées comme texte** ne bougent pas : il
est correct qu'une IRI d'ontologie résolve vers l'édition courante, et modifier
le `href` sous une URL affichée en ferait un mensonge — ce qui serait de toute
façon un changement de texte, interdit.

| § | Texte du lien | `href` actuel | Action |
|---|---|---|---|
| 5.1 | ontology graph for this is available | `/ns/ssn/System` | **bogue** → `/ns/ssn/2017/systems/` |
| 5.2 | ontology graph for this is available | `/ns/sosa/sampling/` | → `/ns/sosa/2017/sampling/` |
| 6.3.5 | graph corresponding to this alignment is available | `/ns/sosa/om` | rien |
| 6.4.3 | graph corresponding to this alignment is available | `/ns/sosa/oboe` | → `/ns/sosa/2017/oboe` |
| 6.5.3 | graph corresponding to this alignment is available | `/ns/sosa/prov/` | → `/ns/sosa/2017/prov/` |
| 3, 6.1 | URL affichée | `/ns/ssn/dul` | rien |

**Le bogue de § 5.1** est antérieur et indépendant : la phrase annonce le graphe
du module *systems*, et le lien pointe sur `/ns/ssn/System`, l'IRI de la classe.
Il relève de la même classe que les liens corrigés en décembre 2017.

**Pourquoi § 6.3.5 et § 6.1 ne bougent pas, et pourquoi § 6.4.3 et § 6.5.3
bougent** : voir la section suivante.

## Ce qui est gelé en 2017 et ce qui ne l'est pas

Vérifié dans `../sdw-sosa-ssn/ssn/rdf/ontology/` :

| IRI d'ontologie 2017 | En 2023 | Résolution |
|---|---|---|
| `ssn/systems/` | module réécrit sous **sosa**, autre IRI | gelée → 2017 |
| `ssn/dul` | alignement réécrit en `sosa/dul` | gelée → 2017 |
| `sosa/om` | remplacé par `sosa-oms` (ISO 19156:2023) | gelée → 2017 |
| `sosa/sampling/` | `extensions/sample-relations.ttl`, `owl:versionIRI <…/sosa/2023/sampling/>` | **→ 2023** |
| `sosa/oboe` | `alignments/sosa-oboe.ttl` déclare `sosa:oboe` | **→ 2023** |
| `sosa/prov/` | `alignments/sosa-prov.ttl` déclare `sosa:prov` | **→ 2023** |

**Correction par rapport au brouillon.** `vocab-ssn-2023-transition.md`
demandait une redirection permanente de `sosa/oboe` et de `sosa/prov` vers leur
emplacement 2017, tout en disant par ailleurs que ces deux modules ont été mis à
jour en 2023. Les deux sont incompatibles, et les fichiers tranchent : l'édition
2023 réutilise ces IRI d'ontologie. La question est instruite pour elle-même
dans [[redirections]], qui retient que l'IRI d'ontologie suit l'édition courante
tant que le WG n'a pas dit le contraire. **Les deux dernières lignes du tableau
ci-dessus en dépendent** : si le WG choisissait d'ancrer `oboe` et `prov` sur
2017, leurs liens de § 6.4.3 et § 6.5.3 n'auraient plus à bouger, et les deux
entrées correspondantes du bandeau seraient à réécrire sur le modèle de celle
d'O&M. `CLAUDE.md` a été corrigé, qui les rangeait parmi les modules figés.

## Le contenu à insérer

Bandeau, à placer juste sous le `h2` de la ligne de date, avant la `dl` des
liens de version, comme dans le précédent SPARQL. `DD Month YYYY` est la date de
publication de la REC 2023.

```html
<div id="vocab-ssn-2017_notice" style="border: solid black 1px; padding: 0.5em; background: #FFB;">

  <p style="margin-top: 0; font-weight: bold;">New Version
  Available: "Semantic Sensor Network Ontology - 2023 Edition"<span style="padding-left: 2em;"></span>
  (Document Status Update, DD Month YYYY)</p>

  <p>The Spatio-temporal Data on the Web Working Group has produced a W3C
  Recommendation for a new version of SSN which adds features to this 2017
  version, while remaining compatible. Please see
  <a href="https://www.w3.org/TR/vocab-ssn-2023/">"Semantic Sensor Network
  Ontology - 2023 Edition"</a> for a new version of this document.</p>

  <p>The ontology IRIs used throughout this document resolve to the edition W3C
  recommends for new adoption. Every graph published by this 2017 Edition
  remains available, unchanged, at a permanent version IRI under
  <code>/2017/</code>.</p>

  <details>
    <summary>How this 2017 Edition relates to the 2023 Edition, module by module</summary>
    <dl>

      <dt>Core: SOSA and SSN (<a href="#x4-1-namespaces">section 4.1</a>)</dt>
      <dd>The ontology IRI of SOSA is
      <a href="http://www.w3.org/ns/sosa/">http://www.w3.org/ns/sosa/</a>;
      the version IRI of its 2017 Edition is
      <a href="http://www.w3.org/ns/sosa/2017/">http://www.w3.org/ns/sosa/2017/</a>.
      The ontology IRI of SSN is
      <a href="http://www.w3.org/ns/ssn/">http://www.w3.org/ns/ssn/</a>;
      the version IRI of its 2017 Edition is
      <a href="http://www.w3.org/ns/ssn/2017/">http://www.w3.org/ns/ssn/2017/</a>.</dd>

      <dt>System Capabilities Module (<a href="#x5-1-system-capabilities-module">section 5.1</a>)</dt>
      <dd>In the 2023 Edition, the
      <a href="https://www.w3.org/TR/vocab-ssn-2023/#System-capabilities">System
      Capabilities Module</a> extends SOSA rather than SSN, and therefore uses a
      different namespace. The namespace
      <code>http://www.w3.org/ns/ssn/systems/</code> continues to denote the
      2017 module; its graph is at
      <a href="http://www.w3.org/ns/ssn/2017/systems/">http://www.w3.org/ns/ssn/2017/systems/</a>.</dd>

      <dt>Sample Relations Module (<a href="#x5-2-sample-relations-module">section 5.2</a>)</dt>
      <dd>The Sample Relations Module has been updated in the 2023 Edition,
      under the same ontology IRI
      <a href="http://www.w3.org/ns/sosa/sampling/">http://www.w3.org/ns/sosa/sampling/</a>.
      Users should either migrate to the 2023 Edition or use the version IRI of
      the 2017 Edition,
      <a href="http://www.w3.org/ns/sosa/2017/sampling/">http://www.w3.org/ns/sosa/2017/sampling/</a>.</dd>

      <dt>DOLCE UltraLite Alignment Module (<a href="#x6-1-dolce-ultralite-alignment-module">section 6.1</a>)</dt>
      <dd>In the 2023 Edition, the
      <a href="https://www.w3.org/TR/vocab-ssn-2023/#DUL-alignment">DOLCE
      UltraLite Alignment Module</a> aligns SOSA rather than SSN, and therefore
      uses a different namespace. The IRI
      <code>http://www.w3.org/ns/ssn/dul</code> continues to denote the 2017
      alignment; its graph is at
      <a href="http://www.w3.org/ns/ssn/2017/dul">http://www.w3.org/ns/ssn/2017/dul</a>.</dd>

      <dt>SSNX Alignment Module (<a href="#x6-2-ssnx-alignment-module">section 6.2</a>)</dt>
      <dd>The 2023 Edition does not contain an SSNX Alignment Module.</dd>

      <dt>O&amp;M Alignment Module (<a href="#x6-3-o-m-alignment-module">section 6.3</a>)</dt>
      <dd>The 2023 Edition includes an extension that provides the canonical RDF
      implementation of OMS, also known as ISO 19156:2023, which is the 2023
      edition of the OGC and ISO standard formerly known as Observations and
      Measurements (O&amp;M). The IRI <code>http://www.w3.org/ns/sosa/om</code>
      continues to denote the 2017 alignment; its graph is at
      <a href="http://www.w3.org/ns/sosa/2017/om">http://www.w3.org/ns/sosa/2017/om</a>.</dd>

      <dt>OBOE Alignment Module (<a href="#x6-4-oboe-alignment-module">section 6.4</a>)</dt>
      <dd>The OBOE Alignment Module has been updated in the 2023 Edition, under
      the same ontology IRI
      <a href="http://www.w3.org/ns/sosa/oboe">http://www.w3.org/ns/sosa/oboe</a>.
      Users should either migrate to the 2023 Edition or use the version IRI of
      the 2017 Edition,
      <a href="http://www.w3.org/ns/sosa/2017/oboe">http://www.w3.org/ns/sosa/2017/oboe</a>.</dd>

      <dt>PROV Alignment Module (<a href="#x6-5-prov-alignment-module">section 6.5</a>)</dt>
      <dd>The PROV Alignment Module has been updated in the 2023 Edition, under
      the same ontology IRI
      <a href="http://www.w3.org/ns/sosa/prov/">http://www.w3.org/ns/sosa/prov/</a>.
      Users should either migrate to the 2023 Edition or use the version IRI of
      the 2017 Edition,
      <a href="http://www.w3.org/ns/sosa/2017/prov/">http://www.w3.org/ns/sosa/2017/prov/</a>.</dd>

    </dl>
  </details>

</div>
```

Ligne de date, à côté de celle de 2017, sans la remplacer :

```
W3C Recommendation 19 October 2017 (Link errors corrected 08 December 2017,
document status updated DD Month YYYY)
```

Paragraphe en tête du SOTD, sur le modèle de celui de décembre 2017 :

```html
<p><strong>Status update (Month YYYY):</strong> a notice was added above
pointing to the 2023 Edition of this Recommendation and describing, module by
module, how the two editions relate. The following links were targeting the
wrong resource and have been corrected to the permanent version IRIs of the
2017 Edition: the ontology graph of the System Capabilities Module in
section 5.1, the ontology graph of the Sample Relations Module in section 5.2,
and the graphs of the OBOE and PROV alignments in sections 6.4.3 and 6.5.3.
The Team has kept a copy of the original document.</p>
```

## Ce que les deux branches ont montré

Écrire les deux alternatives a déplacé un argument. L'editor's draft de 2021
(`ssn/index-ssn.html`, désormais `ssn/index.html` sur la branche éditoriale)
**contient déjà les dix errata appliqués au texte**, et son annexe « Change
History » porte déjà une section « Changes since W3C Recommendation 19 October
2017 » qui les énumère. La voie éditoriale ne consiste donc pas à refaire ce
travail : il est fait depuis 2021 et n'a simplement jamais été publié. Une
republication éditoriale replierait la page d'errata dans le texte — ce que la
voie errata, par construction, ne peut pas faire.

Les deux branches partent du même commit de restauration (`7ff53b5`), qui rend
son texte 2017 à `ssn/index.html` et répare du même coup le lien « Latest
editor's draft » de la REC. Il ne dépend d'aucune des deux voies et pourrait
partir seul.

Les deux portent aussi le bandeau, placé entre la ligne de statut et la liste
des versions, exactement comme sur SPARQL 1.0. ReSpec fabrique cet en-tête
lui-même, donc un `postProcess` dans `config.js` y déplace le bandeau une fois
l'en-tête construit ; si l'en-tête n'est pas trouvé, le bandeau reste où il est
écrit dans la source. Placement vérifié au navigateur sur les deux branches. Il
n'est pas effaçable, comme dans les précédents du W3C. Ce qui les sépare est ce
vers quoi il renvoie :

- **errata** : il est étiqueté *Document Status Update*, parce que c'est le
  mécanisme sur lequel cette voie repose — le bandeau est la seule chose
  modifiée en place, le texte de la REC ne bouge pas, et le lecteur est envoyé
  à la page d'errata pour les conséquences module par module ;
- **éditoriale** : pas d'étiquette de statut, puisque le document est lui-même
  une révision ; le lecteur est renvoyé aux notes de chaque module et à
  l'historique des changements.

Sur la branche éditoriale, les notes de module utilisent l'environnement `note`
de ReSpec avec un titre unique, « Relationship to the 2023 Edition », pour
qu'elles se reconnaissent d'un coup d'œil, et chacune dit qu'elle vaut depuis la
publication de l'édition 2023.

### Ce que la relecture des liens a trouvé

Deux défauts de la REC publiée, repris en errata dans les deux branches :

- en § 5.1, « An ontology graph for this is available » pointe sur
  `http://www.w3.org/ns/ssn/System`, l'IRI de la classe, au lieu du graphe du
  module ;
- quatre liens externes ne résolvent plus, sur 82 vérifiés le 2026-09-12 : la
  page du groupe OGC dans le SOTD, l'affiliation CSIRO dans l'en-tête, le dépôt
  d'ontologies harmonisées ISO/TC 211 en § 6.3.1, et wurvoc.org en § 7.3. Un
  remplacement existe pour les quatre.

Le balisage, lui, n'a rien donné, contrairement à ce qu'une première mesure
laissait croire : la REC publiée passe le parseur sans un seul diagnostic, sans
identifiant dupliqué et sans ancre interne morte. Les « balises non fermées »
que j'avais signalées étaient un artefact de comptage par expression
régulière ; `<p>`, `<li>` et `<dd>` ont une balise fermante facultative en HTML.
Il n'y a pas d'erratum de balisage à écrire.

### C'est ouvert

Poussé sur `w3c/sdw` le 2026-09-12 :

| | |
|---|---|
| Issue | [w3c/sdw#1472](https://github.com/w3c/sdw/issues/1472) |
| Alternative A, errata | [w3c/sdw#1473](https://github.com/w3c/sdw/pull/1473), branche `vocab-ssn-2017-errata` |
| Alternative B, révision éditoriale | [w3c/sdw#1474](https://github.com/w3c/sdw/pull/1474), branche `vocab-ssn-2017-editorial` |

Une seule des deux PR est à fusionner. Le commit de restauration qu'elles
partagent vaut dans les deux cas. La question posée au WG est dans l'issue.

## Reste à faire ailleurs

Dans `../sdw-sosa-ssn`, la spec 2023 doit citer **et** l'IRI d'ontologie **et**
l'IRI de version pour chacun de ses modules, pour que la prochaine édition
puisse jouer le même tour sans avoir à toucher à la REC 2023. **Fait le
2026-09-12** : [PR w3c/sdw-sosa-ssn#524](https://github.com/w3c/sdw-sosa-ssn/pull/524),
branche `cite-version-iris`. Détail et points laissés au WG dans [[next]].

[republishing]: https://www.w3.org/guide/standards-track/republishing
[process]: https://www.w3.org/policies/process/
[charte]: https://www.w3.org/2024/11/sdw-wg-charter.html
[sparql]: https://www.w3.org/TR/2008/REC-rdf-sparql-query-20080115/
[owlref]: https://www.w3.org/TR/owl-ref/
[rdftc]: https://www.w3.org/TR/rdf-testcases/
