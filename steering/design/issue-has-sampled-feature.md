# Issue à ouvrir sur `w3c/sdw-sosa-ssn` : `sosa:hasSampledFeature`

Rédigée le 2026-09-12, pas encore postée — voir [[next]]. Le texte ci-dessous
est prêt à coller.

---

**Titre** : `sosa:hasSampledFeature` has no successor in the 2023 edition

**Corps** :

The 2017 edition declares `sosa:hasSampledFeature`. The 2023 edition declares
neither that term nor a replacement for it, which makes it the only term of the
2017 core that the 2023 edition leaves behind. Every other 2017 term is either
kept, or kept and deprecated, or moved to another IRI.

It matters for the namespace: `https://www.w3.org/ns/ns/sosa/hasSampledFeature`
has to resolve, and w3c/ns is about to serve every term IRI from the most recent
edition that declares it. For this one term, the most recent edition is 2017, so
a reader who dereferences it lands on the 2017 Recommendation while every
neighbouring term leads to the 2023 one. Nothing in the 2023 edition tells that
reader what to use instead.

**Proposal**: declare `sosa:hasSampledFeature` in the deprecated module of SOSA,
`ssn/rdf/ontology/core/sosa-deprecated.ttl`, with `owl:deprecated true` like the
other terms there, and, if the working group agrees on what replaces it, an
annotation pointing at the replacement — `sosa:isSampleOf` and
`sosa:hasFeatureOfInterest` are the candidates.

That would put the term where every other withdrawn term already lives, and let
the namespace serve it from the 2023 edition like the rest.
