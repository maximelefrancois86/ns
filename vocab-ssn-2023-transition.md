For the vocab-ssn-2023 edition, we need the w3c server to serve both 2017 and 2023 editions.
And adapt / augment the regression tests accordingly. 

The new files are pasted temporarily in folder `vocab-ssn-2023`. Files in `vocab-ssn-2023/ontology` and `vocab-ssn-2023/vocabularies` need to be moved/renamed at the right location in folders `ssn` and `sosa`. 
Later, I may receive updates on this folder, so I need a script for that.


In brief,

* We add a year (2017 or 2023) under (sosa or ssn). sosa/sosa.ttl will now be sosa/2017/sosa.ttl
* redirections are set at the highest level (sosa or ssn) to the most recent version. for example, there will be a redirection from sosa/ to sosa/2023/
* File `vocab-ssn-2023-cicd-output.md` contains the output of the CI/CD workflow. Search for section that starts with `=== Ontology Declarations ===`. each ttl file declares an ontology, it need to be served at that URL.
* adapt the htaccess files
* augment the regression-tests files, alert if a test requires to be changed 


More details below:


## Document Status Update to be added to vocab-ssn-2017

### Add notice below h2: 

```html
<div id="vocab-ssn-2017_notice" style="border: solid black 1px; padding: 0.5em; background: #FFB;">
  <p style="margin-top: 0; font-weight: bold;">New Version
        Available: "Semantic Sensor Network Ontology - 2023 Edition"<span style="padding-left: 2em;"></span>
        (Document Status Update, XX Xxxxxxxx 2025)</p>

  <p style="margin-bottom: 0;">The Spatio-temporal Data on the Web Working Group has produced
  a W3C Recommendation for a new version of SSN which adds
  features to this 2017 version, while remaining compatible.
  Please see <a href="https://www.w3.org/TR/vocab-ssn-2023">"Semantic Sensor Network Ontology - 2023 Edition"</a> for a new version of this document.</p>

  <p style="font-weight: bold;">
        Document Status Update, XX Xxxxxxxx 2025</p>

  <p style="margin-bottom: 0;">Links to RDF graphs for the 2017 Edition were added.</p>
</div>
```

### Delete erroneous "Latest editor's draft"

### In Section "Abstract" and "4.1 Namespaces", replace:

> The SSN ontology is available at http://www.w3.org/ns/ssn/.
> The SOSA ontology is available at http://www.w3.org/ns/sosa/.

by: 

```html
    <p style="text-align: center;">
      The SOSA graph contains the core definitions.
      <br>The ontology IRI of SOSA is <a href="http://www.w3.org/ns/sosa/">http://www.w3.org/ns/sosa/</a>.
      <br>The version IRI of SOSA 2017 edition is <a href="http://www.w3.org/ns/sosa/2017/">http://www.w3.org/ns/sosa/2017/</a>.
    </p>
    <p style="text-align: center;">
      The SSN graph contains the full axiomatization of the core terms.
      <br>The ontology IRI of SSN is <a href="http://www.w3.org/ns/ssn/">http://www.w3.org/ns/ssn/</a>.
      <br>The version IRI of SSN 2017 edition is <a href="http://www.w3.org/ns/ssn/2017/">http://www.w3.org/ns/ssn/2017/</a>.
    </p>
```

3. ensure 2023 spec references also references permanent and latest URIs, to anticipate a future spec.

### In Section "5.1 System Capabilities Module"

1. Add warning:

```html
<div class="warning">In the SSN 2023 edition, the <a href="https://www.w3.org/TR/vocab-ssn-2023/#System-capabilities">System Capabilities Module</a> extends SOSA rather than SSN. Therefore, it uses a different namespace.</div>
```


2. set up permanent redirection from 

http://www.w3.org/ns/ssn/systems/ to http://www.w3.org/ns/ssn/2017/systems/

3. ensure 2023 spec references both permanent and latest URIs, to anticipate a future spec.

### In Section "5.2 Sample Relations Module"

1. Add warning:

```html
<div class="warning">
In the SSN 2023 edition, the Sample Relations Module has been updated. 
Users should either migrate to the 2023 edition or replace the ontology IRI with the permanent version IRI of the 2017 edition.
</div>
```


2. Replace:

> An <a href="https://www.w3.org/ns/sosa/sampling/">ontology graph for this is available.</a>

by 

> The ontology IRI of the Sampling module is <a href="http://www.w3.org/ns/sosa/sampling/">http://www.w3.org/ns/sosa/sampling/</a><br>
> The version IRI of the Sampling module 2017 edition is <a href="http://www.w3.org/ns/sosa/2017/sampling/">http://www.w3.org/ns/sosa/2017/sampling/</a>

3. ensure 2023 spec references both permanent and latest URIs, to anticipate a future spec.

### In Section "6.1 Dolce-Ultralite Alignment Module"

1. Add warning:

```html
<div class="warning">In the SSN 2023 edition, the <a href="https://www.w3.org/TR/vocab-ssn-2023/#DUL-alignment">DOLCE UltraLite Alignment Module</a> aligns SOSA rather than SSN. Therefore, it uses a different namespace.</div>
```


2. set up permanent redirection from 

http://www.w3.org/ns/ssn/dul to http://www.w3.org/ns/ssn/2017/dul

3. ensure 2023 spec references both permanent and latest URIs, to anticipate a future spec.



### In Section "6.2 SSNX Alignment Module"

1. Add warning:

```html
<div class="warning">The SSN 2023 edition does not contain a SSNX Alignment Module.</div>
```


### In Section "6.3 O&M Alignment Module"

1. Add warning:

```html
<div class="warning">
The SSN 2023 edition includes an extension that provides the canonical RDF implementation of OMS, also known as ISO 19156:2023, which is the 2023 edition of the OGC and ISO standard formerly known as Observations and Measurements (O&amp;M).
</div>
```


2. set up permanent redirection from 

http://www.w3.org/ns/sosa/om to http://www.w3.org/ns/sosa/2017/om

4. ensure 2023 spec references both permanent and latest URIs, to anticipate a future spec.


### In Section "6.4 OBOE Alignment Module"

1. Add warning:

```html
<div class="warning">
In the SSN 2023 edition, the OBOE Alignment Module has been updated. 
Users should either migrate to the 2023 edition or replace the alignment IRI with the permanent version IRI in the 2017 edition.
</div>
```


2. Replace:

> An <a href="https://www.w3.org/ns/sosa/oboe">ontology graph for this is available.</a>

by 

> The ontology IRI of the OBOE Alignment module is <a href="http://www.w3.org/ns/sosa/oboe">http://www.w3.org/ns/sosa/oboe</a><br>
> The version IRI of the OBOE Alignment module 2017 edition is <a href="http://www.w3.org/ns/sosa/2017/oboe">http://www.w3.org/ns/sosa/2017/oboe</a>


3. set up permanent redirection from 

http://www.w3.org/ns/sosa/oboe to http://www.w3.org/ns/sosa/2017/oboe

4. ensure 2023 spec references both permanent and latest URIs, to anticipate a future spec.

### In Section "6.5 PROV Alignment Module"

1. Add warning:

```html
<div class="warning">
In the SSN 2023 edition, the PROV Alignment Module has been updated. 
Users should either migrate to the 2023 edition or replace the alignment IRI with the permanent version IRI in the 2017 edition.
</div>
```

2. Replace:

> An <a href="https://www.w3.org/ns/sosa/prov/">ontology graph for this is available.</a>

by 

> The ontology IRI of the OBOE Alignment module is <a href="http://www.w3.org/ns/sosa/prov/">http://www.w3.org/ns/sosa/prov/</a><br>
> The version IRI of the OBOE Alignment module 2017 edition is <a href="http://www.w3.org/ns/sosa/2017/prov/">http://www.w3.org/ns/sosa/2017/prov/</a>


3. set up permanent redirection from 

http://www.w3.org/ns/sosa/prov to http://www.w3.org/ns/sosa/2017/prov

4. ensure 2023 spec references both permanent and latest URIs, to anticipate a future spec.


