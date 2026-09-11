2026-04-14T02:18:57.1670820Z Current runner version: '2.333.1'
2026-04-14T02:18:57.1694462Z ##[group]Runner Image Provisioner
2026-04-14T02:18:57.1695590Z Hosted Compute Agent
2026-04-14T02:18:57.1696135Z Version: 20260213.493
2026-04-14T02:18:57.1696885Z Commit: 5c115507f6dd24b8de37d8bbe0bb4509d0cc0fa3
2026-04-14T02:18:57.1697582Z Build Date: 2026-02-13T00:28:41Z
2026-04-14T02:18:57.1698225Z Worker ID: {9d483323-f461-44b2-8570-3581309eb5e6}
2026-04-14T02:18:57.1698905Z Azure Region: westus
2026-04-14T02:18:57.1699465Z ##[endgroup]
2026-04-14T02:18:57.1700954Z ##[group]Operating System
2026-04-14T02:18:57.1701645Z Ubuntu
2026-04-14T02:18:57.1702163Z 24.04.4
2026-04-14T02:18:57.1702583Z LTS
2026-04-14T02:18:57.1703068Z ##[endgroup]
2026-04-14T02:18:57.1703579Z ##[group]Runner Image
2026-04-14T02:18:57.1704167Z Image: ubuntu-24.04
2026-04-14T02:18:57.1704665Z Version: 20260406.80.1
2026-04-14T02:18:57.1706219Z Included Software: https://github.com/actions/runner-images/blob/ubuntu24/20260406.80/images/ubuntu/Ubuntu2404-Readme.md
2026-04-14T02:18:57.1707690Z Image Release: https://github.com/actions/runner-images/releases/tag/ubuntu24%2F20260406.80
2026-04-14T02:18:57.1708665Z ##[endgroup]
2026-04-14T02:18:57.1711413Z ##[group]GITHUB_TOKEN Permissions
2026-04-14T02:18:57.1713407Z Actions: write
2026-04-14T02:18:57.1713943Z ArtifactMetadata: write
2026-04-14T02:18:57.1714491Z Attestations: write
2026-04-14T02:18:57.1715467Z Checks: write
2026-04-14T02:18:57.1715985Z Contents: write
2026-04-14T02:18:57.1716519Z Deployments: write
2026-04-14T02:18:57.1717110Z Discussions: write
2026-04-14T02:18:57.1717653Z Issues: write
2026-04-14T02:18:57.1718132Z Metadata: read
2026-04-14T02:18:57.1718700Z Models: read
2026-04-14T02:18:57.1719180Z Packages: write
2026-04-14T02:18:57.1719782Z Pages: write
2026-04-14T02:18:57.1720445Z PullRequests: write
2026-04-14T02:18:57.1720991Z RepositoryProjects: write
2026-04-14T02:18:57.1721592Z SecurityEvents: write
2026-04-14T02:18:57.1722149Z Statuses: write
2026-04-14T02:18:57.1722709Z ##[endgroup]
2026-04-14T02:18:57.1724713Z Secret source: Actions
2026-04-14T02:18:57.1725764Z Prepare workflow directory
2026-04-14T02:18:57.2062046Z Prepare all required actions
2026-04-14T02:18:57.2100927Z Getting action download info
2026-04-14T02:18:57.6751613Z Download action repository 'actions/checkout@v4' (SHA:34e114876b0b11c390a56381ad16ebd13914f8d5)
2026-04-14T02:18:57.7737203Z Download action repository 'actions/setup-python@v5' (SHA:a26af69be951a213d495a4c3e4e4022e16d87065)
2026-04-14T02:18:57.9536262Z Complete job name: check-repo
2026-04-14T02:18:58.0239489Z ##[group]Run actions/checkout@v4
2026-04-14T02:18:58.0240277Z with:
2026-04-14T02:18:58.0240689Z   repository: w3c/sdw-sosa-ssn
2026-04-14T02:18:58.0241321Z   token: ***
2026-04-14T02:18:58.0241696Z   ssh-strict: true
2026-04-14T02:18:58.0242089Z   ssh-user: git
2026-04-14T02:18:58.0242516Z   persist-credentials: true
2026-04-14T02:18:58.0242981Z   clean: true
2026-04-14T02:18:58.0243384Z   sparse-checkout-cone-mode: true
2026-04-14T02:18:58.0243862Z   fetch-depth: 1
2026-04-14T02:18:58.0244259Z   fetch-tags: false
2026-04-14T02:18:58.0244651Z   show-progress: true
2026-04-14T02:18:58.0245473Z   lfs: false
2026-04-14T02:18:58.0245846Z   submodules: false
2026-04-14T02:18:58.0246239Z   set-safe-directory: true
2026-04-14T02:18:58.0246974Z ##[endgroup]
2026-04-14T02:18:58.1352061Z Syncing repository: w3c/sdw-sosa-ssn
2026-04-14T02:18:58.1353807Z ##[group]Getting Git version info
2026-04-14T02:18:58.1354558Z Working directory is '/home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn'
2026-04-14T02:18:58.1355961Z [command]/usr/bin/git version
2026-04-14T02:18:58.1393129Z git version 2.53.0
2026-04-14T02:18:58.1430953Z ##[endgroup]
2026-04-14T02:18:58.1449561Z Temporarily overriding HOME='/home/runner/work/_temp/ea498d31-4cc6-4fcf-815d-67718e553ef0' before making global git config changes
2026-04-14T02:18:58.1451047Z Adding repository directory to the temporary git global config as a safe directory
2026-04-14T02:18:58.1466978Z [command]/usr/bin/git config --global --add safe.directory /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn
2026-04-14T02:18:58.1506009Z Deleting the contents of '/home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn'
2026-04-14T02:18:58.1510946Z ##[group]Initializing the repository
2026-04-14T02:18:58.1517064Z [command]/usr/bin/git init /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn
2026-04-14T02:18:58.1590143Z hint: Using 'master' as the name for the initial branch. This default branch name
2026-04-14T02:18:58.1591905Z hint: will change to "main" in Git 3.0. To configure the initial branch name
2026-04-14T02:18:58.1593572Z hint: to use in all of your new repositories, which will suppress this warning,
2026-04-14T02:18:58.1595110Z hint: call:
2026-04-14T02:18:58.1595799Z hint:
2026-04-14T02:18:58.1596618Z hint: 	git config --global init.defaultBranch <name>
2026-04-14T02:18:58.1597701Z hint:
2026-04-14T02:18:58.1598668Z hint: Names commonly chosen instead of 'master' are 'main', 'trunk' and
2026-04-14T02:18:58.1600197Z hint: 'development'. The just-created branch can be renamed via this command:
2026-04-14T02:18:58.1601443Z hint:
2026-04-14T02:18:58.1602149Z hint: 	git branch -m <name>
2026-04-14T02:18:58.1602912Z hint:
2026-04-14T02:18:58.1604007Z hint: Disable this message with "git config set advice.defaultBranchName false"
2026-04-14T02:18:58.1606059Z Initialized empty Git repository in /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/.git/
2026-04-14T02:18:58.1608680Z [command]/usr/bin/git remote add origin https://github.com/w3c/sdw-sosa-ssn
2026-04-14T02:18:58.1636497Z ##[endgroup]
2026-04-14T02:18:58.1638053Z ##[group]Disabling automatic garbage collection
2026-04-14T02:18:58.1640353Z [command]/usr/bin/git config --local gc.auto 0
2026-04-14T02:18:58.1667487Z ##[endgroup]
2026-04-14T02:18:58.1668687Z ##[group]Setting up auth
2026-04-14T02:18:58.1675194Z [command]/usr/bin/git config --local --name-only --get-regexp core\.sshCommand
2026-04-14T02:18:58.1704261Z [command]/usr/bin/git submodule foreach --recursive sh -c "git config --local --name-only --get-regexp 'core\.sshCommand' && git config --local --unset-all 'core.sshCommand' || :"
2026-04-14T02:18:58.2015910Z [command]/usr/bin/git config --local --name-only --get-regexp http\.https\:\/\/github\.com\/\.extraheader
2026-04-14T02:18:58.2043468Z [command]/usr/bin/git submodule foreach --recursive sh -c "git config --local --name-only --get-regexp 'http\.https\:\/\/github\.com\/\.extraheader' && git config --local --unset-all 'http.https://github.com/.extraheader' || :"
2026-04-14T02:18:58.2269236Z [command]/usr/bin/git config --local --name-only --get-regexp ^includeIf\.gitdir:
2026-04-14T02:18:58.2316397Z [command]/usr/bin/git submodule foreach --recursive git config --local --show-origin --name-only --get-regexp remote.origin.url
2026-04-14T02:18:58.2565172Z [command]/usr/bin/git config --local http.https://github.com/.extraheader AUTHORIZATION: basic ***
2026-04-14T02:18:58.2600400Z ##[endgroup]
2026-04-14T02:18:58.2601603Z ##[group]Fetching the repository
2026-04-14T02:18:58.2610743Z [command]/usr/bin/git -c protocol.version=2 fetch --no-tags --prune --no-recurse-submodules --depth=1 origin +aed685b694d937c9d11656084591a212bab233f7:refs/remotes/origin/437-platform-examples-no-social-entity
2026-04-14T02:18:58.9457700Z From https://github.com/w3c/sdw-sosa-ssn
2026-04-14T02:18:58.9459860Z  * [new ref]         aed685b694d937c9d11656084591a212bab233f7 -> origin/437-platform-examples-no-social-entity
2026-04-14T02:18:58.9491521Z ##[endgroup]
2026-04-14T02:18:58.9492756Z ##[group]Determining the checkout info
2026-04-14T02:18:58.9494189Z ##[endgroup]
2026-04-14T02:18:58.9496469Z [command]/usr/bin/git sparse-checkout disable
2026-04-14T02:18:58.9532636Z [command]/usr/bin/git config --local --unset-all extensions.worktreeConfig
2026-04-14T02:18:58.9561758Z ##[group]Checking out the ref
2026-04-14T02:18:58.9565503Z [command]/usr/bin/git checkout --progress --force -B 437-platform-examples-no-social-entity refs/remotes/origin/437-platform-examples-no-social-entity
2026-04-14T02:18:58.9882694Z Switched to a new branch '437-platform-examples-no-social-entity'
2026-04-14T02:18:58.9888321Z branch '437-platform-examples-no-social-entity' set up to track 'origin/437-platform-examples-no-social-entity'.
2026-04-14T02:18:58.9893410Z ##[endgroup]
2026-04-14T02:18:58.9932825Z [command]/usr/bin/git log -1 --format=%H
2026-04-14T02:18:58.9956629Z aed685b694d937c9d11656084591a212bab233f7
2026-04-14T02:18:59.0269988Z ##[group]Run actions/setup-python@v5
2026-04-14T02:18:59.0271126Z with:
2026-04-14T02:18:59.0271938Z   python-version: 3.13
2026-04-14T02:18:59.0272882Z   check-latest: false
2026-04-14T02:18:59.0274031Z   token: ***
2026-04-14T02:18:59.0275076Z   update-environment: true
2026-04-14T02:18:59.0276101Z   allow-prereleases: false
2026-04-14T02:18:59.0277072Z   freethreaded: false
2026-04-14T02:18:59.0277968Z ##[endgroup]
2026-04-14T02:18:59.1933249Z ##[group]Installed versions
2026-04-14T02:18:59.2048613Z Successfully set up CPython (3.13.12)
2026-04-14T02:18:59.2051065Z ##[endgroup]
2026-04-14T02:18:59.2195868Z ##[group]Run python -m pip install --upgrade pip
2026-04-14T02:18:59.2196952Z [36;1mpython -m pip install --upgrade pip[0m
2026-04-14T02:18:59.2197776Z [36;1mpip install rdflib[0m
2026-04-14T02:18:59.2236693Z shell: /usr/bin/bash -e {0}
2026-04-14T02:18:59.2237464Z env:
2026-04-14T02:18:59.2238203Z   pythonLocation: /opt/hostedtoolcache/Python/3.13.12/x64
2026-04-14T02:18:59.2239198Z   PKG_CONFIG_PATH: /opt/hostedtoolcache/Python/3.13.12/x64/lib/pkgconfig
2026-04-14T02:18:59.2240187Z   Python_ROOT_DIR: /opt/hostedtoolcache/Python/3.13.12/x64
2026-04-14T02:18:59.2241101Z   Python2_ROOT_DIR: /opt/hostedtoolcache/Python/3.13.12/x64
2026-04-14T02:18:59.2242019Z   Python3_ROOT_DIR: /opt/hostedtoolcache/Python/3.13.12/x64
2026-04-14T02:18:59.2242946Z   LD_LIBRARY_PATH: /opt/hostedtoolcache/Python/3.13.12/x64/lib
2026-04-14T02:18:59.2243778Z ##[endgroup]
2026-04-14T02:19:01.1876465Z Requirement already satisfied: pip in /opt/hostedtoolcache/Python/3.13.12/x64/lib/python3.13/site-packages (26.0.1)
2026-04-14T02:19:01.7940932Z Collecting rdflib
2026-04-14T02:19:01.8632577Z   Downloading rdflib-7.6.0-py3-none-any.whl.metadata (12 kB)
2026-04-14T02:19:01.8965989Z Collecting pyparsing<4,>=2.1.0 (from rdflib)
2026-04-14T02:19:01.9002148Z   Downloading pyparsing-3.3.2-py3-none-any.whl.metadata (5.8 kB)
2026-04-14T02:19:01.9070455Z Downloading rdflib-7.6.0-py3-none-any.whl (615 kB)
2026-04-14T02:19:01.9375119Z    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 615.4/615.4 kB 71.4 MB/s  0:00:00
2026-04-14T02:19:01.9401492Z Downloading pyparsing-3.3.2-py3-none-any.whl (122 kB)
2026-04-14T02:19:01.9561673Z Installing collected packages: pyparsing, rdflib
2026-04-14T02:19:02.3775425Z 
2026-04-14T02:19:02.3787753Z Successfully installed pyparsing-3.3.2 rdflib-7.6.0
2026-04-14T02:19:02.4265580Z ##[group]Run python ssn/scripts/check_repository.py
2026-04-14T02:19:02.4266034Z [36;1mpython ssn/scripts/check_repository.py[0m
2026-04-14T02:19:02.4288563Z shell: /usr/bin/bash -e {0}
2026-04-14T02:19:02.4288816Z env:
2026-04-14T02:19:02.4289090Z   pythonLocation: /opt/hostedtoolcache/Python/3.13.12/x64
2026-04-14T02:19:02.4289537Z   PKG_CONFIG_PATH: /opt/hostedtoolcache/Python/3.13.12/x64/lib/pkgconfig
2026-04-14T02:19:02.4289972Z   Python_ROOT_DIR: /opt/hostedtoolcache/Python/3.13.12/x64
2026-04-14T02:19:02.4290321Z   Python2_ROOT_DIR: /opt/hostedtoolcache/Python/3.13.12/x64
2026-04-14T02:19:02.4290696Z   Python3_ROOT_DIR: /opt/hostedtoolcache/Python/3.13.12/x64
2026-04-14T02:19:02.4291067Z   LD_LIBRARY_PATH: /opt/hostedtoolcache/Python/3.13.12/x64/lib
2026-04-14T02:19:02.4291362Z ##[endgroup]
2026-04-14T02:19:03.1914180Z === Unused HTML Chapter Files ===
2026-04-14T02:19:03.1915269Z - ssn/chapters/ModelSSNProfiles.html
2026-04-14T02:19:03.1915847Z - ssn/chapters/ModelSystemInstance.html
2026-04-14T02:19:03.1916189Z 
2026-04-14T02:19:03.1916347Z === Unreferenced Image Files ===
2026-04-14T02:19:03.1917029Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/images/InkBird_IBS_TH2-example.png
2026-04-14T02:19:03.1918039Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/images/InkBird_IBS_TH2-packaging.png
2026-04-14T02:19:03.1919632Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/images/InkBird_IBS_TH2-receiving.png
2026-04-14T02:19:03.1920662Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/images/InkBird_IBS_TH2-shipping.png
2026-04-14T02:19:03.1921713Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/images/Inkbird-examples-sensorKind.png
2026-04-14T02:19:03.1922829Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/images/Inkbird-examples-subclass.png
2026-04-14T02:19:03.1923822Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/images/Inkbird-sensorkind.png
2026-04-14T02:19:03.1924975Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/images/Inkbird-subclass.png
2026-04-14T02:19:03.1925955Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/images/Inkbird-type-as-class.png
2026-04-14T02:19:03.1926863Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/images/LocatedSampler.svg
2026-04-14T02:19:03.1927793Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/images/LocatedSamplerDeployment.svg
2026-04-14T02:19:03.1928762Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/images/LocatedSamplerPlatform.svg
2026-04-14T02:19:03.1929752Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/images/MadeBySystem-MadeExecution.png
2026-04-14T02:19:03.1930694Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/images/OGC-0.png
2026-04-14T02:19:03.1931702Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/images/System-Execution-Procedure-specializations.png
2026-04-14T02:19:03.2021581Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/images/obs-foi-pattern.svg
2026-04-14T02:19:03.2022193Z 
2026-04-14T02:19:03.2022376Z === Invalid TTL Files ===
2026-04-14T02:19:03.2022998Z All valid 🎉
2026-04-14T02:19:03.2023223Z 
2026-04-14T02:19:03.2023392Z === Unreferenced TTL Files ===
2026-04-14T02:19:03.2023965Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/oms/20-082r2.ttl
2026-04-14T02:19:03.2025311Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/examples/ACME-Beer/Beer-FeatureOfInterest-IBS-TH2.ttl
2026-04-14T02:19:03.2026636Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/examples/ACME-Beer/Beer-Full-IBS-TH2.ttl
2026-04-14T02:19:03.2027923Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/examples/ACME-Beer/Beer-ObservationCollections-IBS-TH2.ttl
2026-04-14T02:19:03.2029229Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/examples/ACME-Beer/Beer-Packaging-IBS-TH2.ttl
2026-04-14T02:19:03.2030525Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/examples/ACME-Beer/Beer-PlatformDeployment-IBS-TH2.ttl
2026-04-14T02:19:03.2031870Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/examples/ACME-Beer/Beer-SampleCollections-IBS-TH2.ttl
2026-04-14T02:19:03.2033525Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/examples/ACME-Beer/Beer-Shipping-IBS-TH2.ttl
2026-04-14T02:19:03.2035028Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/examples/ACME-Beer/Beer-Supermarket-IBS-TH2.ttl
2026-04-14T02:19:03.2036284Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/examples/Beer-FeatureOfInterest-IBS-TH2.ttl
2026-04-14T02:19:03.2037503Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/examples/Beer-Full-IBS-TH2.ttl
2026-04-14T02:19:03.2038885Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/examples/Beer-ObservationCollections-IBS-TH2.ttl
2026-04-14T02:19:03.2040113Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/examples/Beer-Packaging-IBS-TH2.ttl
2026-04-14T02:19:03.2041293Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/examples/Beer-PlatformDeployment-IBS-TH2.ttl
2026-04-14T02:19:03.2042560Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/examples/Beer-SampleCollections-IBS-TH2.ttl
2026-04-14T02:19:03.2043663Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/examples/Beer-Shipping-IBS-TH2.ttl
2026-04-14T02:19:03.2044983Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/examples/Beer-Supermarket-IBS-TH2.ttl
2026-04-14T02:19:03.2046103Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/examples/InkBird-IBS-TH2-Range.ttl
2026-04-14T02:19:03.2047324Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/examples/UOM-cdt.ttl
2026-04-14T02:19:03.2048389Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/examples/complex-sensors/entailments.shacl.ttl
2026-04-14T02:19:03.2049768Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/examples/complex-sensors/observation-inferred.ttl
2026-04-14T02:19:03.2050996Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/examples/complex-sensors/observation.ttl
2026-04-14T02:19:03.2052173Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/examples/complex-sensors/sensor-catalog.ttl
2026-04-14T02:19:03.2053269Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/examples/sample-relations.ttl
2026-04-14T02:19:03.2054220Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/examples/smiley.ttl
2026-04-14T02:19:03.2055575Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/tests/Actuation/2017ex10.ttl
2026-04-14T02:19:03.2056576Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/tests/Actuation/2017ex11.ttl
2026-04-14T02:19:03.2057560Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/tests/Deployment/2017ex23.ttl
2026-04-14T02:19:03.2058549Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/tests/Deployment/2017ex25.ttl
2026-04-14T02:19:03.2059517Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/tests/FoI/2017ex14.ttl
2026-04-14T02:19:03.2060413Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/tests/FoI/2017ex19.ttl
2026-04-14T02:19:03.2061292Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/tests/FoI/2017ex20.ttl
2026-04-14T02:19:03.2062138Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/tests/FoI/2017ex23.ttl
2026-04-14T02:19:03.2063018Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/tests/FoI/2017ex24.ttl
2026-04-14T02:19:03.2063906Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/tests/FoI/2017ex8.ttl
2026-04-14T02:19:03.2065045Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/tests/Observation/F1.ttl
2026-04-14T02:19:03.2066196Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/tests/Observation/F2.ttl
2026-04-14T02:19:03.2067123Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/tests/Observation/F3.ttl
2026-04-14T02:19:03.2068041Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/tests/Observation/F4.ttl
2026-04-14T02:19:03.2068950Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/tests/Observation/F5.ttl
2026-04-14T02:19:03.2069855Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/tests/Observation/F6.ttl
2026-04-14T02:19:03.2070772Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/tests/Observation/P1.ttl
2026-04-14T02:19:03.2071965Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/tests/Observation/P2.ttl
2026-04-14T02:19:03.2073029Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/tests/Observation/P3.ttl
2026-04-14T02:19:03.2073947Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/tests/Observation/P4.ttl
2026-04-14T02:19:03.2075161Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/tests/ObservationCollection/OC1.ttl
2026-04-14T02:19:03.2076265Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/tests/ObservationCollection/OC2.ttl
2026-04-14T02:19:03.2077288Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/tests/Platform/2017ex23.ttl
2026-04-14T02:19:03.2078235Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/tests/Platform/2017ex24.ttl
2026-04-14T02:19:03.2079172Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/tests/Platform/2017ex8.ttl
2026-04-14T02:19:03.2080112Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/tests/Procedure/2017ex21.ttl
2026-04-14T02:19:03.2081064Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/tests/Procedure/2017ex8.ttl
2026-04-14T02:19:03.2081988Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/tests/Sample/2017ex19.ttl
2026-04-14T02:19:03.2082927Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/tests/Sample/2017ex20.ttl
2026-04-14T02:19:03.2083860Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/tests/Sample/2017ex23.ttl
2026-04-14T02:19:03.2085296Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/tests/Sample/2017ex24.ttl
2026-04-14T02:19:03.2086260Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/tests/SampleCollection/SC1.ttl
2026-04-14T02:19:03.2087242Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/tests/Sampling/2017ex19.ttl
2026-04-14T02:19:03.2088197Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/tests/Sampling/2017ex20.ttl
2026-04-14T02:19:03.2089131Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/tests/System/2017ex10.ttl
2026-04-14T02:19:03.2090053Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/tests/System/2017ex11.ttl
2026-04-14T02:19:03.2090987Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/tests/System/2017ex14.ttl
2026-04-14T02:19:03.2091902Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/tests/System/2017ex17.ttl
2026-04-14T02:19:03.2092807Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/tests/System/2017ex18.ttl
2026-04-14T02:19:03.2093714Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/tests/System/2017ex21.ttl
2026-04-14T02:19:03.2094639Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/tests/System/2017ex22.ttl
2026-04-14T02:19:03.2095787Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/tests/System/2017ex23.ttl
2026-04-14T02:19:03.2096717Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/tests/System/2017ex25.ttl
2026-04-14T02:19:03.2097649Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/tests/System/2017ex6.ttl
2026-04-14T02:19:03.2098550Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/tests/System/2017ex7.ttl
2026-04-14T02:19:03.2099449Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/tests/reasoning-tests.ttl
2026-04-14T02:19:03.2100543Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/vocabularies/system-capabilities-properties.ttl
2026-04-14T02:19:03.2101811Z - /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn/ssn/rdf/vocabularies/system-environment-properties.ttl
2026-04-14T02:19:03.2102530Z 
2026-04-14T02:19:03.2102708Z === Ontology Declarations ===
2026-04-14T02:19:03.2103388Z - <http://www.w3.org/ns/sosa/act/>: ssn/rdf/ontology/core/sosa-actuation.ttl
2026-04-14T02:19:03.2104291Z - <http://www.w3.org/ns/sosa/common/>: ssn/rdf/ontology/core/sosa-common.ttl
2026-04-14T02:19:03.2105456Z - <http://www.w3.org/ns/sosa/dep/>: ssn/rdf/ontology/core/sosa-deprecated.ttl
2026-04-14T02:19:03.2106357Z - <http://www.w3.org/ns/sosa/obs/>: ssn/rdf/ontology/core/sosa-observation.ttl
2026-04-14T02:19:03.2107237Z - <http://www.w3.org/ns/sosa/sam/>: ssn/rdf/ontology/core/sosa-sampling.ttl
2026-04-14T02:19:03.2108022Z - <http://www.w3.org/ns/sosa/>: ssn/rdf/ontology/core/sosa.ttl
2026-04-14T02:19:03.2109009Z - <http://www.w3.org/ns/ssn/act/>: ssn/rdf/ontology/core/ssn-actuation.ttl
2026-04-14T02:19:03.2109873Z - <http://www.w3.org/ns/ssn/common/>: ssn/rdf/ontology/core/ssn-common.ttl
2026-04-14T02:19:03.2110717Z - <http://www.w3.org/ns/ssn/dep/>: ssn/rdf/ontology/core/ssn-deprecated.ttl
2026-04-14T02:19:03.2111585Z - <http://www.w3.org/ns/ssn/obs/>: ssn/rdf/ontology/core/ssn-observation.ttl
2026-04-14T02:19:03.2112428Z - <http://www.w3.org/ns/ssn/sam/>: ssn/rdf/ontology/core/ssn-sampling.ttl
2026-04-14T02:19:03.2113191Z - <http://www.w3.org/ns/ssn/>: ssn/rdf/ontology/core/ssn.ttl
2026-04-14T02:19:03.2114136Z - <http://www.w3.org/ns/sosa/sampling/>: ssn/rdf/ontology/extensions/sample-relations.ttl
2026-04-14T02:19:03.2115357Z - <http://www.w3.org/ns/sosa/oms/>: ssn/rdf/ontology/extensions/sosa-oms.ttl
2026-04-14T02:19:03.2116281Z - <http://www.w3.org/ns/sosa/systems/>: ssn/rdf/ontology/extensions/sosa-system.ttl
2026-04-14T02:19:03.2117195Z - <http://www.w3.org/ns/ssn/oms/>: ssn/rdf/ontology/extensions/ssn-oms.ttl
2026-04-14T02:19:03.2118381Z - <http://www.w3.org/ns/sosa/system-capability-properties#>: ssn/rdf/vocabularies/system-capabilities-properties.ttl
2026-04-14T02:19:03.2119871Z - <http://www.w3.org/ns/sosa/system-environment-properties#>: ssn/rdf/vocabularies/system-environment-properties.ttl
2026-04-14T02:19:03.2120984Z 
2026-04-14T02:19:03.2121147Z === Term Definitions ===
2026-04-14T02:19:03.2121784Z No duplicate term definitions 🎉
2026-04-14T02:19:03.2122292Z No term undefined 🎉
2026-04-14T02:19:03.2122803Z All terms defined in existing ontologies 🎉
2026-04-14T02:19:03.2123160Z 
2026-04-14T02:19:03.2123319Z === All Term Definitions ===
2026-04-14T02:19:03.2124462Z - http://www.w3.org/ns/sosa/ActuatableProperty defined in http://www.w3.org/ns/sosa/dep/ which is declared in ssn/rdf/ontology/core/sosa-deprecated.ttl
2026-04-14T02:19:03.2126521Z - http://www.w3.org/ns/sosa/ActuatingProcedure defined in http://www.w3.org/ns/sosa/act/ which is declared in ssn/rdf/ontology/core/sosa-actuation.ttl
2026-04-14T02:19:03.2128308Z - http://www.w3.org/ns/sosa/Actuation defined in http://www.w3.org/ns/sosa/act/ which is declared in ssn/rdf/ontology/core/sosa-actuation.ttl
2026-04-14T02:19:03.2130047Z - http://www.w3.org/ns/sosa/ActuationCollection defined in http://www.w3.org/ns/sosa/act/ which is declared in ssn/rdf/ontology/core/sosa-actuation.ttl
2026-04-14T02:19:03.2131760Z - http://www.w3.org/ns/sosa/Actuator defined in http://www.w3.org/ns/sosa/act/ which is declared in ssn/rdf/ontology/core/sosa-actuation.ttl
2026-04-14T02:19:03.2133413Z - http://www.w3.org/ns/sosa/Asset defined in http://www.w3.org/ns/sosa/common/ which is declared in ssn/rdf/ontology/core/sosa-common.ttl
2026-04-14T02:19:03.2135386Z - http://www.w3.org/ns/sosa/Battery defined in http://www.w3.org/ns/sosa/systems/ which is declared in ssn/rdf/ontology/extensions/sosa-system.ttl
2026-04-14T02:19:03.2137076Z - http://www.w3.org/ns/sosa/Deployment defined in http://www.w3.org/ns/sosa/common/ which is declared in ssn/rdf/ontology/core/sosa-common.ttl
2026-04-14T02:19:03.2138758Z - http://www.w3.org/ns/sosa/Execution defined in http://www.w3.org/ns/sosa/common/ which is declared in ssn/rdf/ontology/core/sosa-common.ttl
2026-04-14T02:19:03.2140477Z - http://www.w3.org/ns/sosa/ExecutionCollection defined in http://www.w3.org/ns/sosa/common/ which is declared in ssn/rdf/ontology/core/sosa-common.ttl
2026-04-14T02:19:03.2142282Z - http://www.w3.org/ns/sosa/FeatureOfInterest defined in http://www.w3.org/ns/sosa/common/ which is declared in ssn/rdf/ontology/core/sosa-common.ttl
2026-04-14T02:19:03.2144047Z - http://www.w3.org/ns/sosa/MaterialSample defined in http://www.w3.org/ns/sosa/sam/ which is declared in ssn/rdf/ontology/core/sosa-sampling.ttl
2026-04-14T02:19:03.2146168Z - http://www.w3.org/ns/sosa/NormalOperatingConditions defined in http://www.w3.org/ns/sosa/systems/ which is declared in ssn/rdf/ontology/extensions/sosa-system.ttl
2026-04-14T02:19:03.2148336Z - http://www.w3.org/ns/sosa/ObservableProperty defined in http://www.w3.org/ns/sosa/dep/ which is declared in ssn/rdf/ontology/core/sosa-deprecated.ttl
2026-04-14T02:19:03.2150140Z - http://www.w3.org/ns/sosa/Observation defined in http://www.w3.org/ns/sosa/obs/ which is declared in ssn/rdf/ontology/core/sosa-observation.ttl
2026-04-14T02:19:03.2151925Z - http://www.w3.org/ns/sosa/ObservationCollection defined in http://www.w3.org/ns/sosa/obs/ which is declared in ssn/rdf/ontology/core/sosa-observation.ttl
2026-04-14T02:19:03.2153765Z - http://www.w3.org/ns/sosa/ObservingProcedure defined in http://www.w3.org/ns/sosa/obs/ which is declared in ssn/rdf/ontology/core/sosa-observation.ttl
2026-04-14T02:19:03.2155881Z - http://www.w3.org/ns/sosa/OperatingConditions defined in http://www.w3.org/ns/sosa/systems/ which is declared in ssn/rdf/ontology/extensions/sosa-system.ttl
2026-04-14T02:19:03.2157692Z - http://www.w3.org/ns/sosa/Platform defined in http://www.w3.org/ns/sosa/common/ which is declared in ssn/rdf/ontology/core/sosa-common.ttl
2026-04-14T02:19:03.2159393Z - http://www.w3.org/ns/sosa/Procedure defined in http://www.w3.org/ns/sosa/common/ which is declared in ssn/rdf/ontology/core/sosa-common.ttl
2026-04-14T02:19:03.2161080Z - http://www.w3.org/ns/sosa/Property defined in http://www.w3.org/ns/sosa/common/ which is declared in ssn/rdf/ontology/core/sosa-common.ttl
2026-04-14T02:19:03.2162708Z - http://www.w3.org/ns/sosa/Result defined in http://www.w3.org/ns/sosa/common/ which is declared in ssn/rdf/ontology/core/sosa-common.ttl
2026-04-14T02:19:03.2164676Z - http://www.w3.org/ns/sosa/Sample defined in http://www.w3.org/ns/sosa/sam/ which is declared in ssn/rdf/ontology/core/sosa-sampling.ttl
2026-04-14T02:19:03.2166580Z - http://www.w3.org/ns/sosa/SampleCollection defined in http://www.w3.org/ns/sosa/sam/ which is declared in ssn/rdf/ontology/core/sosa-sampling.ttl
2026-04-14T02:19:03.2168280Z - http://www.w3.org/ns/sosa/Sampler defined in http://www.w3.org/ns/sosa/sam/ which is declared in ssn/rdf/ontology/core/sosa-sampling.ttl
2026-04-14T02:19:03.2169921Z - http://www.w3.org/ns/sosa/Sampling defined in http://www.w3.org/ns/sosa/sam/ which is declared in ssn/rdf/ontology/core/sosa-sampling.ttl
2026-04-14T02:19:03.2171631Z - http://www.w3.org/ns/sosa/SamplingCollection defined in http://www.w3.org/ns/sosa/sam/ which is declared in ssn/rdf/ontology/core/sosa-sampling.ttl
2026-04-14T02:19:03.2173412Z - http://www.w3.org/ns/sosa/SamplingProcedure defined in http://www.w3.org/ns/sosa/sam/ which is declared in ssn/rdf/ontology/core/sosa-sampling.ttl
2026-04-14T02:19:03.2175348Z - http://www.w3.org/ns/sosa/Sensor defined in http://www.w3.org/ns/sosa/obs/ which is declared in ssn/rdf/ontology/core/sosa-observation.ttl
2026-04-14T02:19:03.2177057Z - http://www.w3.org/ns/sosa/SpatialSample defined in http://www.w3.org/ns/sosa/sam/ which is declared in ssn/rdf/ontology/core/sosa-sampling.ttl
2026-04-14T02:19:03.2178787Z - http://www.w3.org/ns/sosa/StatisticalSample defined in http://www.w3.org/ns/sosa/sam/ which is declared in ssn/rdf/ontology/core/sosa-sampling.ttl
2026-04-14T02:19:03.2180498Z - http://www.w3.org/ns/sosa/Stimulus defined in http://www.w3.org/ns/sosa/obs/ which is declared in ssn/rdf/ontology/core/sosa-observation.ttl
2026-04-14T02:19:03.2182383Z - http://www.w3.org/ns/sosa/SuboptimalOperatingConditions defined in http://www.w3.org/ns/sosa/systems/ which is declared in ssn/rdf/ontology/extensions/sosa-system.ttl
2026-04-14T02:19:03.2184429Z - http://www.w3.org/ns/sosa/SurvivableConditions defined in http://www.w3.org/ns/sosa/systems/ which is declared in ssn/rdf/ontology/extensions/sosa-system.ttl
2026-04-14T02:19:03.2186498Z - http://www.w3.org/ns/sosa/System defined in http://www.w3.org/ns/sosa/common/ which is declared in ssn/rdf/ontology/core/sosa-common.ttl
2026-04-14T02:19:03.2188102Z - http://www.w3.org/ns/sosa/actsOn defined in http://www.w3.org/ns/sosa/act/ which is declared in ssn/rdf/ontology/core/sosa-actuation.ttl
2026-04-14T02:19:03.2189987Z - http://www.w3.org/ns/sosa/actsOnProperty defined in http://www.w3.org/ns/sosa/act/ which is declared in ssn/rdf/ontology/core/sosa-actuation.ttl
2026-04-14T02:19:03.2191756Z - http://www.w3.org/ns/sosa/deployedAsset defined in http://www.w3.org/ns/sosa/common/ which is declared in ssn/rdf/ontology/core/sosa-common.ttl
2026-04-14T02:19:03.2193558Z - http://www.w3.org/ns/sosa/deployedOnPlatform defined in http://www.w3.org/ns/sosa/common/ which is declared in ssn/rdf/ontology/core/sosa-common.ttl
2026-04-14T02:19:03.2195589Z - http://www.w3.org/ns/sosa/deployedSystem defined in http://www.w3.org/ns/sosa/common/ which is declared in ssn/rdf/ontology/core/sosa-common.ttl
2026-04-14T02:19:03.2197403Z - http://www.w3.org/ns/sosa/detects defined in http://www.w3.org/ns/sosa/obs/ which is declared in ssn/rdf/ontology/core/sosa-observation.ttl
2026-04-14T02:19:03.2198943Z - http://www.w3.org/ns/sosa/endTime defined in http://www.w3.org/ns/sosa/common/ which is declared in ssn/rdf/ontology/core/sosa-common.ttl
2026-04-14T02:19:03.2200585Z - http://www.w3.org/ns/sosa/featureHasUltimateSample defined in http://www.w3.org/ns/sosa/sam/ which is declared in ssn/rdf/ontology/core/sosa-sampling.ttl
2026-04-14T02:19:03.2202299Z - http://www.w3.org/ns/sosa/forProperty defined in http://www.w3.org/ns/sosa/common/ which is declared in ssn/rdf/ontology/core/sosa-common.ttl
2026-04-14T02:19:03.2204035Z - http://www.w3.org/ns/sosa/hasDeployment defined in http://www.w3.org/ns/sosa/common/ which is declared in ssn/rdf/ontology/core/sosa-common.ttl
2026-04-14T02:19:03.2206299Z - http://www.w3.org/ns/sosa/hasFeatureOfInterest defined in http://www.w3.org/ns/sosa/common/ which is declared in ssn/rdf/ontology/core/sosa-common.ttl
2026-04-14T02:19:03.2208052Z - http://www.w3.org/ns/sosa/hasInput defined in http://www.w3.org/ns/sosa/common/ which is declared in ssn/rdf/ontology/core/sosa-common.ttl
2026-04-14T02:19:03.2209786Z - http://www.w3.org/ns/sosa/hasInputValue defined in http://www.w3.org/ns/sosa/common/ which is declared in ssn/rdf/ontology/core/sosa-common.ttl
2026-04-14T02:19:03.2211501Z - http://www.w3.org/ns/sosa/hasMember defined in http://www.w3.org/ns/sosa/common/ which is declared in ssn/rdf/ontology/core/sosa-common.ttl
2026-04-14T02:19:03.2213309Z - http://www.w3.org/ns/sosa/hasOperatingConditions defined in http://www.w3.org/ns/sosa/systems/ which is declared in ssn/rdf/ontology/extensions/sosa-system.ttl
2026-04-14T02:19:03.2215478Z - http://www.w3.org/ns/sosa/hasOriginalSample defined in http://www.w3.org/ns/sosa/sam/ which is declared in ssn/rdf/ontology/core/sosa-sampling.ttl
2026-04-14T02:19:03.2217220Z - http://www.w3.org/ns/sosa/hasOutput defined in http://www.w3.org/ns/sosa/common/ which is declared in ssn/rdf/ontology/core/sosa-common.ttl
2026-04-14T02:19:03.2218924Z - http://www.w3.org/ns/sosa/hasProcedure defined in http://www.w3.org/ns/sosa/common/ which is declared in ssn/rdf/ontology/core/sosa-common.ttl
2026-04-14T02:19:03.2220626Z - http://www.w3.org/ns/sosa/hasProperty defined in http://www.w3.org/ns/sosa/common/ which is declared in ssn/rdf/ontology/core/sosa-common.ttl
2026-04-14T02:19:03.2222314Z - http://www.w3.org/ns/sosa/hasProxy defined in http://www.w3.org/ns/sosa/obs/ which is declared in ssn/rdf/ontology/core/sosa-observation.ttl
2026-04-14T02:19:03.2223965Z - http://www.w3.org/ns/sosa/hasResult defined in http://www.w3.org/ns/sosa/common/ which is declared in ssn/rdf/ontology/core/sosa-common.ttl
2026-04-14T02:19:03.2225853Z - http://www.w3.org/ns/sosa/hasSample defined in http://www.w3.org/ns/sosa/sam/ which is declared in ssn/rdf/ontology/core/sosa-sampling.ttl
2026-04-14T02:19:03.2227567Z - http://www.w3.org/ns/sosa/hasSimpleResult defined in http://www.w3.org/ns/sosa/common/ which is declared in ssn/rdf/ontology/core/sosa-common.ttl
2026-04-14T02:19:03.2229297Z - http://www.w3.org/ns/sosa/hasSubSystem defined in http://www.w3.org/ns/sosa/common/ which is declared in ssn/rdf/ontology/core/sosa-common.ttl
2026-04-14T02:19:03.2231111Z - http://www.w3.org/ns/sosa/hasSystemCapability defined in http://www.w3.org/ns/sosa/systems/ which is declared in ssn/rdf/ontology/extensions/sosa-system.ttl
2026-04-14T02:19:03.2233249Z - http://www.w3.org/ns/sosa/hasUltimateFeatureOfInterest defined in http://www.w3.org/ns/sosa/common/ which is declared in ssn/rdf/ontology/core/sosa-common.ttl
2026-04-14T02:19:03.2235416Z - http://www.w3.org/ns/sosa/hasValidityContext defined in http://www.w3.org/ns/sosa/systems/ which is declared in ssn/rdf/ontology/extensions/sosa-system.ttl
2026-04-14T02:19:03.2237194Z - http://www.w3.org/ns/sosa/hosts defined in http://www.w3.org/ns/sosa/common/ which is declared in ssn/rdf/ontology/core/sosa-common.ttl
2026-04-14T02:19:03.2238839Z - http://www.w3.org/ns/sosa/implementedBy defined in http://www.w3.org/ns/sosa/common/ which is declared in ssn/rdf/ontology/core/sosa-common.ttl
2026-04-14T02:19:03.2240529Z - http://www.w3.org/ns/sosa/implements defined in http://www.w3.org/ns/sosa/common/ which is declared in ssn/rdf/ontology/core/sosa-common.ttl
2026-04-14T02:19:03.2242232Z - http://www.w3.org/ns/sosa/inDeployment defined in http://www.w3.org/ns/sosa/common/ which is declared in ssn/rdf/ontology/core/sosa-common.ttl
2026-04-14T02:19:03.2243886Z - http://www.w3.org/ns/sosa/inputFor defined in http://www.w3.org/ns/sosa/common/ which is declared in ssn/rdf/ontology/core/sosa-common.ttl
2026-04-14T02:19:03.2245937Z - http://www.w3.org/ns/sosa/inputValueForExecution defined in http://www.w3.org/ns/sosa/common/ which is declared in ssn/rdf/ontology/core/sosa-common.ttl
2026-04-14T02:19:03.2247964Z - http://www.w3.org/ns/sosa/isActedOnBy defined in http://www.w3.org/ns/sosa/act/ which is declared in ssn/rdf/ontology/core/sosa-actuation.ttl
2026-04-14T02:19:03.2249670Z - http://www.w3.org/ns/sosa/isDetectedBy defined in http://www.w3.org/ns/sosa/obs/ which is declared in ssn/rdf/ontology/core/sosa-observation.ttl
2026-04-14T02:19:03.2251464Z - http://www.w3.org/ns/sosa/isFeatureOfInterestOf defined in http://www.w3.org/ns/sosa/common/ which is declared in ssn/rdf/ontology/core/sosa-common.ttl
2026-04-14T02:19:03.2253234Z - http://www.w3.org/ns/sosa/isHostedBy defined in http://www.w3.org/ns/sosa/common/ which is declared in ssn/rdf/ontology/core/sosa-common.ttl
2026-04-14T02:19:03.2255116Z - http://www.w3.org/ns/sosa/isMemberOf defined in http://www.w3.org/ns/sosa/common/ which is declared in ssn/rdf/ontology/core/sosa-common.ttl
2026-04-14T02:19:03.2256865Z - http://www.w3.org/ns/sosa/isObservedBy defined in http://www.w3.org/ns/sosa/obs/ which is declared in ssn/rdf/ontology/core/sosa-observation.ttl
2026-04-14T02:19:03.2258635Z - http://www.w3.org/ns/sosa/isOriginalSampleOf defined in http://www.w3.org/ns/sosa/sam/ which is declared in ssn/rdf/ontology/core/sosa-sampling.ttl
2026-04-14T02:19:03.2260404Z - http://www.w3.org/ns/sosa/isProcedureFor defined in http://www.w3.org/ns/sosa/common/ which is declared in ssn/rdf/ontology/core/sosa-common.ttl
2026-04-14T02:19:03.2262112Z - http://www.w3.org/ns/sosa/isPropertyOf defined in http://www.w3.org/ns/sosa/common/ which is declared in ssn/rdf/ontology/core/sosa-common.ttl
2026-04-14T02:19:03.2263831Z - http://www.w3.org/ns/sosa/isProxyFor defined in http://www.w3.org/ns/sosa/obs/ which is declared in ssn/rdf/ontology/core/sosa-observation.ttl
2026-04-14T02:19:03.2265792Z - http://www.w3.org/ns/sosa/isResultOf defined in http://www.w3.org/ns/sosa/common/ which is declared in ssn/rdf/ontology/core/sosa-common.ttl
2026-04-14T02:19:03.2267551Z - http://www.w3.org/ns/sosa/isResultOfMadeBySampler defined in http://www.w3.org/ns/sosa/sam/ which is declared in ssn/rdf/ontology/core/sosa-sampling.ttl
2026-04-14T02:19:03.2269434Z - http://www.w3.org/ns/sosa/isResultOfUsedProcedure defined in http://www.w3.org/ns/sosa/sam/ which is declared in ssn/rdf/ontology/core/sosa-sampling.ttl
2026-04-14T02:19:03.2271195Z - http://www.w3.org/ns/sosa/isSampleOf defined in http://www.w3.org/ns/sosa/sam/ which is declared in ssn/rdf/ontology/core/sosa-sampling.ttl
2026-04-14T02:19:03.2272945Z - http://www.w3.org/ns/sosa/isSampleOfUltimateFOI defined in http://www.w3.org/ns/sosa/sam/ which is declared in ssn/rdf/ontology/core/sosa-sampling.ttl
2026-04-14T02:19:03.2275210Z - http://www.w3.org/ns/sosa/isSubSystemOf defined in http://www.w3.org/ns/sosa/common/ which is declared in ssn/rdf/ontology/core/sosa-common.ttl
2026-04-14T02:19:03.2276450Z - http://www.w3.org/ns/sosa/isUltimateFeatureOfInterestOf defined in http://www.w3.org/ns/sosa/common/ which is declared in ssn/rdf/ontology/core/sosa-common.ttl
2026-04-14T02:19:03.2277461Z - http://www.w3.org/ns/sosa/madeActuation defined in http://www.w3.org/ns/sosa/act/ which is declared in ssn/rdf/ontology/core/sosa-actuation.ttl
2026-04-14T02:19:03.2278378Z - http://www.w3.org/ns/sosa/madeByActuator defined in http://www.w3.org/ns/sosa/act/ which is declared in ssn/rdf/ontology/core/sosa-actuation.ttl
2026-04-14T02:19:03.2279273Z - http://www.w3.org/ns/sosa/madeBySampler defined in http://www.w3.org/ns/sosa/sam/ which is declared in ssn/rdf/ontology/core/sosa-sampling.ttl
2026-04-14T02:19:03.2280161Z - http://www.w3.org/ns/sosa/madeBySensor defined in http://www.w3.org/ns/sosa/obs/ which is declared in ssn/rdf/ontology/core/sosa-observation.ttl
2026-04-14T02:19:03.2281045Z - http://www.w3.org/ns/sosa/madeBySystem defined in http://www.w3.org/ns/sosa/common/ which is declared in ssn/rdf/ontology/core/sosa-common.ttl
2026-04-14T02:19:03.2281943Z - http://www.w3.org/ns/sosa/madeExecution defined in http://www.w3.org/ns/sosa/common/ which is declared in ssn/rdf/ontology/core/sosa-common.ttl
2026-04-14T02:19:03.2283017Z - http://www.w3.org/ns/sosa/madeObservation defined in http://www.w3.org/ns/sosa/obs/ which is declared in ssn/rdf/ontology/core/sosa-observation.ttl
2026-04-14T02:19:03.2283911Z - http://www.w3.org/ns/sosa/madeSampling defined in http://www.w3.org/ns/sosa/sam/ which is declared in ssn/rdf/ontology/core/sosa-sampling.ttl
2026-04-14T02:19:03.2285073Z - http://www.w3.org/ns/sosa/madeSamplingHasResult defined in http://www.w3.org/ns/sosa/sam/ which is declared in ssn/rdf/ontology/core/sosa-sampling.ttl
2026-04-14T02:19:03.2286092Z - http://www.w3.org/ns/sosa/observationRelatedTo defined in http://www.w3.org/ns/sosa/obs/ which is declared in ssn/rdf/ontology/core/sosa-observation.ttl
2026-04-14T02:19:03.2287039Z - http://www.w3.org/ns/sosa/observedProperty defined in http://www.w3.org/ns/sosa/obs/ which is declared in ssn/rdf/ontology/core/sosa-observation.ttl
2026-04-14T02:19:03.2287932Z - http://www.w3.org/ns/sosa/observes defined in http://www.w3.org/ns/sosa/obs/ which is declared in ssn/rdf/ontology/core/sosa-observation.ttl
2026-04-14T02:19:03.2288861Z - http://www.w3.org/ns/sosa/oms/PreparationProcedure defined in http://www.w3.org/ns/sosa/oms/ which is declared in ssn/rdf/ontology/extensions/sosa-oms.ttl
2026-04-14T02:19:03.2289807Z - http://www.w3.org/ns/sosa/oms/PreparationStep defined in http://www.w3.org/ns/sosa/oms/ which is declared in ssn/rdf/ontology/extensions/sosa-oms.ttl
2026-04-14T02:19:03.2290747Z - http://www.w3.org/ns/sosa/oms/hasPreparationStep defined in http://www.w3.org/ns/sosa/oms/ which is declared in ssn/rdf/ontology/extensions/sosa-oms.ttl
2026-04-14T02:19:03.2291674Z - http://www.w3.org/ns/sosa/oms/madeOnPlatform defined in http://www.w3.org/ns/sosa/oms/ which is declared in ssn/rdf/ontology/extensions/sosa-oms.ttl
2026-04-14T02:19:03.2292641Z - http://www.w3.org/ns/sosa/oms/makesObservationCollection defined in http://www.w3.org/ns/sosa/oms/ which is declared in ssn/rdf/ontology/extensions/sosa-oms.ttl
2026-04-14T02:19:03.2293592Z - http://www.w3.org/ns/sosa/oms/metadata defined in http://www.w3.org/ns/sosa/oms/ which is declared in ssn/rdf/ontology/extensions/sosa-oms.ttl
2026-04-14T02:19:03.2294486Z - http://www.w3.org/ns/sosa/oms/observationType defined in http://www.w3.org/ns/sosa/oms/ which is declared in ssn/rdf/ontology/extensions/sosa-oms.ttl
2026-04-14T02:19:03.2295669Z - http://www.w3.org/ns/sosa/oms/preparedSample defined in http://www.w3.org/ns/sosa/oms/ which is declared in ssn/rdf/ontology/extensions/sosa-oms.ttl
2026-04-14T02:19:03.2296616Z - http://www.w3.org/ns/sosa/oms/processingDetails defined in http://www.w3.org/ns/sosa/oms/ which is declared in ssn/rdf/ontology/extensions/sosa-oms.ttl
2026-04-14T02:19:03.2297677Z - http://www.w3.org/ns/sosa/oms/relatedSampling defined in http://www.w3.org/ns/sosa/oms/ which is declared in ssn/rdf/ontology/extensions/sosa-oms.ttl
2026-04-14T02:19:03.2298640Z - http://www.w3.org/ns/sosa/oms/samplePreparationStep defined in http://www.w3.org/ns/sosa/oms/ which is declared in ssn/rdf/ontology/extensions/sosa-oms.ttl
2026-04-14T02:19:03.2299587Z - http://www.w3.org/ns/sosa/oms/validTime defined in http://www.w3.org/ns/sosa/oms/ which is declared in ssn/rdf/ontology/extensions/sosa-oms.ttl
2026-04-14T02:19:03.2300455Z - http://www.w3.org/ns/sosa/originated defined in http://www.w3.org/ns/sosa/obs/ which is declared in ssn/rdf/ontology/core/sosa-observation.ttl
2026-04-14T02:19:03.2301326Z - http://www.w3.org/ns/sosa/outputFor defined in http://www.w3.org/ns/sosa/common/ which is declared in ssn/rdf/ontology/core/sosa-common.ttl
2026-04-14T02:19:03.2302216Z - http://www.w3.org/ns/sosa/phenomenonOccurred defined in http://www.w3.org/ns/sosa/common/ which is declared in ssn/rdf/ontology/core/sosa-common.ttl
2026-04-14T02:19:03.2303136Z - http://www.w3.org/ns/sosa/phenomenonTime defined in http://www.w3.org/ns/sosa/common/ which is declared in ssn/rdf/ontology/core/sosa-common.ttl
2026-04-14T02:19:03.2304018Z - http://www.w3.org/ns/sosa/propertyFor defined in http://www.w3.org/ns/sosa/common/ which is declared in ssn/rdf/ontology/core/sosa-common.ttl
2026-04-14T02:19:03.2305141Z - http://www.w3.org/ns/sosa/qualityOf defined in http://www.w3.org/ns/sosa/obs/ which is declared in ssn/rdf/ontology/core/sosa-observation.ttl
2026-04-14T02:19:03.2306047Z - http://www.w3.org/ns/sosa/relatedObservation defined in http://www.w3.org/ns/sosa/obs/ which is declared in ssn/rdf/ontology/core/sosa-observation.ttl
2026-04-14T02:19:03.2306963Z - http://www.w3.org/ns/sosa/resultQuality defined in http://www.w3.org/ns/sosa/obs/ which is declared in ssn/rdf/ontology/core/sosa-observation.ttl
2026-04-14T02:19:03.2307843Z - http://www.w3.org/ns/sosa/resultTime defined in http://www.w3.org/ns/sosa/common/ which is declared in ssn/rdf/ontology/core/sosa-common.ttl
2026-04-14T02:19:03.2308820Z - http://www.w3.org/ns/sosa/sampling/RelationshipNature defined in http://www.w3.org/ns/sosa/sampling/ which is declared in ssn/rdf/ontology/extensions/sample-relations.ttl
2026-04-14T02:19:03.2309908Z - http://www.w3.org/ns/sosa/sampling/SampleRelationship defined in http://www.w3.org/ns/sosa/sampling/ which is declared in ssn/rdf/ontology/extensions/sample-relations.ttl
2026-04-14T02:19:03.2311007Z - http://www.w3.org/ns/sosa/sampling/hasSampleRelationship defined in http://www.w3.org/ns/sosa/sampling/ which is declared in ssn/rdf/ontology/extensions/sample-relations.ttl
2026-04-14T02:19:03.2312119Z - http://www.w3.org/ns/sosa/sampling/natureOfRelationship defined in http://www.w3.org/ns/sosa/sampling/ which is declared in ssn/rdf/ontology/extensions/sample-relations.ttl
2026-04-14T02:19:03.2313200Z - http://www.w3.org/ns/sosa/sampling/relatedSample defined in http://www.w3.org/ns/sosa/sampling/ which is declared in ssn/rdf/ontology/extensions/sample-relations.ttl
2026-04-14T02:19:03.2314181Z - http://www.w3.org/ns/sosa/startTime defined in http://www.w3.org/ns/sosa/common/ which is declared in ssn/rdf/ontology/core/sosa-common.ttl
2026-04-14T02:19:03.2315543Z - http://www.w3.org/ns/sosa/system-capability-properties#Accuracy defined in http://www.w3.org/ns/sosa/system-capability-properties# which is declared in ssn/rdf/vocabularies/system-capabilities-properties.ttl
2026-04-14T02:19:03.2317036Z - http://www.w3.org/ns/sosa/system-capability-properties#BatteryLifetime defined in http://www.w3.org/ns/sosa/system-capability-properties# which is declared in ssn/rdf/vocabularies/system-capabilities-properties.ttl
2026-04-14T02:19:03.2318493Z - http://www.w3.org/ns/sosa/system-capability-properties#BatteryResolution defined in http://www.w3.org/ns/sosa/system-capability-properties# which is declared in ssn/rdf/vocabularies/system-capabilities-properties.ttl
2026-04-14T02:19:03.2320025Z - http://www.w3.org/ns/sosa/system-capability-properties#Drift defined in http://www.w3.org/ns/sosa/system-capability-properties# which is declared in ssn/rdf/vocabularies/system-capabilities-properties.ttl
2026-04-14T02:19:03.2321414Z - http://www.w3.org/ns/sosa/system-capability-properties#Frequency defined in http://www.w3.org/ns/sosa/system-capability-properties# which is declared in ssn/rdf/vocabularies/system-capabilities-properties.ttl
2026-04-14T02:19:03.2322838Z - http://www.w3.org/ns/sosa/system-capability-properties#HumidityAccuracy defined in http://www.w3.org/ns/sosa/system-capability-properties# which is declared in ssn/rdf/vocabularies/system-capabilities-properties.ttl
2026-04-14T02:19:03.2324252Z - http://www.w3.org/ns/sosa/system-capability-properties#Latency defined in http://www.w3.org/ns/sosa/system-capability-properties# which is declared in ssn/rdf/vocabularies/system-capabilities-properties.ttl
2026-04-14T02:19:03.2325844Z - http://www.w3.org/ns/sosa/system-capability-properties#LowerDetectionLimit defined in http://www.w3.org/ns/sosa/system-capability-properties# which is declared in ssn/rdf/vocabularies/system-capabilities-properties.ttl
2026-04-14T02:19:03.2327320Z - http://www.w3.org/ns/sosa/system-capability-properties#MaintenanceSchedule defined in http://www.w3.org/ns/sosa/system-capability-properties# which is declared in ssn/rdf/vocabularies/system-capabilities-properties.ttl
2026-04-14T02:19:03.2328880Z - http://www.w3.org/ns/sosa/system-capability-properties#MaxFrequency defined in http://www.w3.org/ns/sosa/system-capability-properties# which is declared in ssn/rdf/vocabularies/system-capabilities-properties.ttl
2026-04-14T02:19:03.2330337Z - http://www.w3.org/ns/sosa/system-capability-properties#MaxMeasurableHumidity defined in http://www.w3.org/ns/sosa/system-capability-properties# which is declared in ssn/rdf/vocabularies/system-capabilities-properties.ttl
2026-04-14T02:19:03.2331845Z - http://www.w3.org/ns/sosa/system-capability-properties#MaxMeasurableTemperature defined in http://www.w3.org/ns/sosa/system-capability-properties# which is declared in ssn/rdf/vocabularies/system-capabilities-properties.ttl
2026-04-14T02:19:03.2333370Z - http://www.w3.org/ns/sosa/system-capability-properties#MaxOperatingPower defined in http://www.w3.org/ns/sosa/system-capability-properties# which is declared in ssn/rdf/vocabularies/system-capabilities-properties.ttl
2026-04-14T02:19:03.2335017Z - http://www.w3.org/ns/sosa/system-capability-properties#MinFrequency defined in http://www.w3.org/ns/sosa/system-capability-properties# which is declared in ssn/rdf/vocabularies/system-capabilities-properties.ttl
2026-04-14T02:19:03.2336501Z - http://www.w3.org/ns/sosa/system-capability-properties#MinMeasurableHumidity defined in http://www.w3.org/ns/sosa/system-capability-properties# which is declared in ssn/rdf/vocabularies/system-capabilities-properties.ttl
2026-04-14T02:19:03.2338015Z - http://www.w3.org/ns/sosa/system-capability-properties#MinMeasurableTemperature defined in http://www.w3.org/ns/sosa/system-capability-properties# which is declared in ssn/rdf/vocabularies/system-capabilities-properties.ttl
2026-04-14T02:19:03.2339518Z - http://www.w3.org/ns/sosa/system-capability-properties#MinOperatingPower defined in http://www.w3.org/ns/sosa/system-capability-properties# which is declared in ssn/rdf/vocabularies/system-capabilities-properties.ttl
2026-04-14T02:19:03.2340939Z - http://www.w3.org/ns/sosa/system-capability-properties#Precision defined in http://www.w3.org/ns/sosa/system-capability-properties# which is declared in ssn/rdf/vocabularies/system-capabilities-properties.ttl
2026-04-14T02:19:03.2342359Z - http://www.w3.org/ns/sosa/system-capability-properties#RFSensitivity defined in http://www.w3.org/ns/sosa/system-capability-properties# which is declared in ssn/rdf/vocabularies/system-capabilities-properties.ttl
2026-04-14T02:19:03.2343768Z - http://www.w3.org/ns/sosa/system-capability-properties#Resolution defined in http://www.w3.org/ns/sosa/system-capability-properties# which is declared in ssn/rdf/vocabularies/system-capabilities-properties.ttl
2026-04-14T02:19:03.2345426Z - http://www.w3.org/ns/sosa/system-capability-properties#ResponseTime defined in http://www.w3.org/ns/sosa/system-capability-properties# which is declared in ssn/rdf/vocabularies/system-capabilities-properties.ttl
2026-04-14T02:19:03.2346852Z - http://www.w3.org/ns/sosa/system-capability-properties#Selectivity defined in http://www.w3.org/ns/sosa/system-capability-properties# which is declared in ssn/rdf/vocabularies/system-capabilities-properties.ttl
2026-04-14T02:19:03.2348260Z - http://www.w3.org/ns/sosa/system-capability-properties#Sensitivity defined in http://www.w3.org/ns/sosa/system-capability-properties# which is declared in ssn/rdf/vocabularies/system-capabilities-properties.ttl
2026-04-14T02:19:03.2349712Z - http://www.w3.org/ns/sosa/system-capability-properties#TemperatureAccuracy defined in http://www.w3.org/ns/sosa/system-capability-properties# which is declared in ssn/rdf/vocabularies/system-capabilities-properties.ttl
2026-04-14T02:19:03.2351188Z - http://www.w3.org/ns/sosa/system-capability-properties#TemperaturePrecision defined in http://www.w3.org/ns/sosa/system-capability-properties# which is declared in ssn/rdf/vocabularies/system-capabilities-properties.ttl
2026-04-14T02:19:03.2352681Z - http://www.w3.org/ns/sosa/system-capability-properties#TemperatureResolution defined in http://www.w3.org/ns/sosa/system-capability-properties# which is declared in ssn/rdf/vocabularies/system-capabilities-properties.ttl
2026-04-14T02:19:03.2354325Z - http://www.w3.org/ns/sosa/system-capability-properties#UpperDetectionLimit defined in http://www.w3.org/ns/sosa/system-capability-properties# which is declared in ssn/rdf/vocabularies/system-capabilities-properties.ttl
2026-04-14T02:19:03.2356059Z - http://www.w3.org/ns/sosa/system-environment-properties#Altitude defined in http://www.w3.org/ns/sosa/system-environment-properties# which is declared in ssn/rdf/vocabularies/system-environment-properties.ttl
2026-04-14T02:19:03.2357503Z - http://www.w3.org/ns/sosa/system-environment-properties#AmbientHumidity defined in http://www.w3.org/ns/sosa/system-environment-properties# which is declared in ssn/rdf/vocabularies/system-environment-properties.ttl
2026-04-14T02:19:03.2358966Z - http://www.w3.org/ns/sosa/system-environment-properties#AmbientLightLevel defined in http://www.w3.org/ns/sosa/system-environment-properties# which is declared in ssn/rdf/vocabularies/system-environment-properties.ttl
2026-04-14T02:19:03.2360446Z - http://www.w3.org/ns/sosa/system-environment-properties#AmbientPressure defined in http://www.w3.org/ns/sosa/system-environment-properties# which is declared in ssn/rdf/vocabularies/system-environment-properties.ttl
2026-04-14T02:19:03.2361919Z - http://www.w3.org/ns/sosa/system-environment-properties#AmbientTemperature defined in http://www.w3.org/ns/sosa/system-environment-properties# which is declared in ssn/rdf/vocabularies/system-environment-properties.ttl
2026-04-14T02:19:03.2363434Z - http://www.w3.org/ns/sosa/system-environment-properties#DeploymentEnvironmentType defined in http://www.w3.org/ns/sosa/system-environment-properties# which is declared in ssn/rdf/vocabularies/system-environment-properties.ttl
2026-04-14T02:19:03.2365067Z - http://www.w3.org/ns/sosa/system-environment-properties#DeploymentLocation defined in http://www.w3.org/ns/sosa/system-environment-properties# which is declared in ssn/rdf/vocabularies/system-environment-properties.ttl
2026-04-14T02:19:03.2366578Z - http://www.w3.org/ns/sosa/system-environment-properties#ExposureToVibration defined in http://www.w3.org/ns/sosa/system-environment-properties# which is declared in ssn/rdf/vocabularies/system-environment-properties.ttl
2026-04-14T02:19:03.2368092Z - http://www.w3.org/ns/sosa/system-environment-properties#MagneticInterferenceLevel defined in http://www.w3.org/ns/sosa/system-environment-properties# which is declared in ssn/rdf/vocabularies/system-environment-properties.ttl
2026-04-14T02:19:03.2369764Z - http://www.w3.org/ns/sosa/system-environment-properties#MaxAmbientRelativeHumidity defined in http://www.w3.org/ns/sosa/system-environment-properties# which is declared in ssn/rdf/vocabularies/system-environment-properties.ttl
2026-04-14T02:19:03.2371297Z - http://www.w3.org/ns/sosa/system-environment-properties#MaxAmbientTemperature defined in http://www.w3.org/ns/sosa/system-environment-properties# which is declared in ssn/rdf/vocabularies/system-environment-properties.ttl
2026-04-14T02:19:03.2372828Z - http://www.w3.org/ns/sosa/system-environment-properties#MinAmbientRelativeHumidity defined in http://www.w3.org/ns/sosa/system-environment-properties# which is declared in ssn/rdf/vocabularies/system-environment-properties.ttl
2026-04-14T02:19:03.2374354Z - http://www.w3.org/ns/sosa/system-environment-properties#MinAmbientTemperature defined in http://www.w3.org/ns/sosa/system-environment-properties# which is declared in ssn/rdf/vocabularies/system-environment-properties.ttl
2026-04-14T02:19:03.2376063Z - http://www.w3.org/ns/sosa/system-environment-properties#PollutionLevel defined in http://www.w3.org/ns/sosa/system-environment-properties# which is declared in ssn/rdf/vocabularies/system-environment-properties.ttl
2026-04-14T02:19:03.2377493Z - http://www.w3.org/ns/sosa/system-environment-properties#Salinity defined in http://www.w3.org/ns/sosa/system-environment-properties# which is declared in ssn/rdf/vocabularies/system-environment-properties.ttl
2026-04-14T02:19:03.2379036Z - http://www.w3.org/ns/sosa/system-environment-properties#UVExposure defined in http://www.w3.org/ns/sosa/system-environment-properties# which is declared in ssn/rdf/vocabularies/system-environment-properties.ttl
2026-04-14T02:19:03.2380455Z - http://www.w3.org/ns/sosa/system-environment-properties#WindDirection defined in http://www.w3.org/ns/sosa/system-environment-properties# which is declared in ssn/rdf/vocabularies/system-environment-properties.ttl
2026-04-14T02:19:03.2381882Z - http://www.w3.org/ns/sosa/system-environment-properties#WindSpeed defined in http://www.w3.org/ns/sosa/system-environment-properties# which is declared in ssn/rdf/vocabularies/system-environment-properties.ttl
2026-04-14T02:19:03.2383049Z - http://www.w3.org/ns/sosa/systemDeployment defined in http://www.w3.org/ns/sosa/common/ which is declared in ssn/rdf/ontology/core/sosa-common.ttl
2026-04-14T02:19:03.2383973Z - http://www.w3.org/ns/sosa/usedForExecution defined in http://www.w3.org/ns/sosa/common/ which is declared in ssn/rdf/ontology/core/sosa-common.ttl
2026-04-14T02:19:03.2385155Z - http://www.w3.org/ns/sosa/usedForExecutionHasResult defined in http://www.w3.org/ns/sosa/sam/ which is declared in ssn/rdf/ontology/core/sosa-sampling.ttl
2026-04-14T02:19:03.2386112Z - http://www.w3.org/ns/sosa/usedProcedure defined in http://www.w3.org/ns/sosa/common/ which is declared in ssn/rdf/ontology/core/sosa-common.ttl
2026-04-14T02:19:03.2386995Z - http://www.w3.org/ns/sosa/wasActedOnBy defined in http://www.w3.org/ns/sosa/act/ which is declared in ssn/rdf/ontology/core/sosa-actuation.ttl
2026-04-14T02:19:03.2387894Z - http://www.w3.org/ns/sosa/wasObservedBy defined in http://www.w3.org/ns/sosa/obs/ which is declared in ssn/rdf/ontology/core/sosa-observation.ttl
2026-04-14T02:19:03.2388797Z - http://www.w3.org/ns/sosa/wasOriginatedBy defined in http://www.w3.org/ns/sosa/obs/ which is declared in ssn/rdf/ontology/core/sosa-observation.ttl
2026-04-14T02:19:03.2389684Z - http://www.w3.org/ns/ssn/Deployment defined in http://www.w3.org/ns/ssn/dep/ which is declared in ssn/rdf/ontology/core/ssn-deprecated.ttl
2026-04-14T02:19:03.2390522Z - http://www.w3.org/ns/ssn/Input defined in http://www.w3.org/ns/ssn/dep/ which is declared in ssn/rdf/ontology/core/ssn-deprecated.ttl
2026-04-14T02:19:03.2391331Z - http://www.w3.org/ns/ssn/Output defined in http://www.w3.org/ns/ssn/dep/ which is declared in ssn/rdf/ontology/core/ssn-deprecated.ttl
2026-04-14T02:19:03.2392156Z - http://www.w3.org/ns/ssn/Property defined in http://www.w3.org/ns/ssn/dep/ which is declared in ssn/rdf/ontology/core/ssn-deprecated.ttl
2026-04-14T02:19:03.2393096Z - http://www.w3.org/ns/ssn/Stimulus defined in http://www.w3.org/ns/ssn/dep/ which is declared in ssn/rdf/ontology/core/ssn-deprecated.ttl
2026-04-14T02:19:03.2393920Z - http://www.w3.org/ns/ssn/System defined in http://www.w3.org/ns/ssn/dep/ which is declared in ssn/rdf/ontology/core/ssn-deprecated.ttl
2026-04-14T02:19:03.2394979Z - http://www.w3.org/ns/ssn/deployedAsset defined in http://www.w3.org/ns/ssn/dep/ which is declared in ssn/rdf/ontology/core/ssn-deprecated.ttl
2026-04-14T02:19:03.2395927Z - http://www.w3.org/ns/ssn/deployedOnPlatform defined in http://www.w3.org/ns/ssn/dep/ which is declared in ssn/rdf/ontology/core/ssn-deprecated.ttl
2026-04-14T02:19:03.2396823Z - http://www.w3.org/ns/ssn/deployedSystem defined in http://www.w3.org/ns/ssn/dep/ which is declared in ssn/rdf/ontology/core/ssn-deprecated.ttl
2026-04-14T02:19:03.2397674Z - http://www.w3.org/ns/ssn/detects defined in http://www.w3.org/ns/ssn/dep/ which is declared in ssn/rdf/ontology/core/ssn-deprecated.ttl
2026-04-14T02:19:03.2398510Z - http://www.w3.org/ns/ssn/forProperty defined in http://www.w3.org/ns/ssn/dep/ which is declared in ssn/rdf/ontology/core/ssn-deprecated.ttl
2026-04-14T02:19:03.2399374Z - http://www.w3.org/ns/ssn/hasDeployment defined in http://www.w3.org/ns/ssn/dep/ which is declared in ssn/rdf/ontology/core/ssn-deprecated.ttl
2026-04-14T02:19:03.2400220Z - http://www.w3.org/ns/ssn/hasInput defined in http://www.w3.org/ns/ssn/dep/ which is declared in ssn/rdf/ontology/core/ssn-deprecated.ttl
2026-04-14T02:19:03.2401231Z - http://www.w3.org/ns/ssn/hasOutput defined in http://www.w3.org/ns/ssn/dep/ which is declared in ssn/rdf/ontology/core/ssn-deprecated.ttl
2026-04-14T02:19:03.2402079Z - http://www.w3.org/ns/ssn/hasProperty defined in http://www.w3.org/ns/ssn/dep/ which is declared in ssn/rdf/ontology/core/ssn-deprecated.ttl
2026-04-14T02:19:03.2402937Z - http://www.w3.org/ns/ssn/hasSubSystem defined in http://www.w3.org/ns/ssn/dep/ which is declared in ssn/rdf/ontology/core/ssn-deprecated.ttl
2026-04-14T02:19:03.2403800Z - http://www.w3.org/ns/ssn/implementedBy defined in http://www.w3.org/ns/ssn/dep/ which is declared in ssn/rdf/ontology/core/ssn-deprecated.ttl
2026-04-14T02:19:03.2404658Z - http://www.w3.org/ns/ssn/implements defined in http://www.w3.org/ns/ssn/dep/ which is declared in ssn/rdf/ontology/core/ssn-deprecated.ttl
2026-04-14T02:19:03.2405652Z - http://www.w3.org/ns/ssn/inDeployment defined in http://www.w3.org/ns/ssn/dep/ which is declared in ssn/rdf/ontology/core/ssn-deprecated.ttl
2026-04-14T02:19:03.2406520Z - http://www.w3.org/ns/ssn/isPropertyOf defined in http://www.w3.org/ns/ssn/dep/ which is declared in ssn/rdf/ontology/core/ssn-deprecated.ttl
2026-04-14T02:19:03.2407372Z - http://www.w3.org/ns/ssn/isProxyFor defined in http://www.w3.org/ns/ssn/dep/ which is declared in ssn/rdf/ontology/core/ssn-deprecated.ttl
2026-04-14T02:19:03.2408235Z - http://www.w3.org/ns/ssn/wasOriginatedBy defined in http://www.w3.org/ns/ssn/dep/ which is declared in ssn/rdf/ontology/core/ssn-deprecated.ttl
2026-04-14T02:19:03.2408738Z 
2026-04-14T02:19:03.2408833Z === Term Definitions Per File ===
2026-04-14T02:19:03.2409264Z - ssn/rdf/ontology/core/sosa-actuation.ttl declares http://www.w3.org/ns/sosa/ActuatingProcedure
2026-04-14T02:19:03.2409855Z - ssn/rdf/ontology/core/sosa-actuation.ttl declares http://www.w3.org/ns/sosa/Actuation
2026-04-14T02:19:03.2410453Z - ssn/rdf/ontology/core/sosa-actuation.ttl declares http://www.w3.org/ns/sosa/ActuationCollection
2026-04-14T02:19:03.2411040Z - ssn/rdf/ontology/core/sosa-actuation.ttl declares http://www.w3.org/ns/sosa/Actuator
2026-04-14T02:19:03.2411582Z - ssn/rdf/ontology/core/sosa-actuation.ttl declares http://www.w3.org/ns/sosa/actsOn
2026-04-14T02:19:03.2412145Z - ssn/rdf/ontology/core/sosa-actuation.ttl declares http://www.w3.org/ns/sosa/actsOnProperty
2026-04-14T02:19:03.2412722Z - ssn/rdf/ontology/core/sosa-actuation.ttl declares http://www.w3.org/ns/sosa/isActedOnBy
2026-04-14T02:19:03.2413296Z - ssn/rdf/ontology/core/sosa-actuation.ttl declares http://www.w3.org/ns/sosa/madeActuation
2026-04-14T02:19:03.2414020Z - ssn/rdf/ontology/core/sosa-actuation.ttl declares http://www.w3.org/ns/sosa/madeByActuator
2026-04-14T02:19:03.2414603Z - ssn/rdf/ontology/core/sosa-actuation.ttl declares http://www.w3.org/ns/sosa/wasActedOnBy
2026-04-14T02:19:03.2415366Z - ssn/rdf/ontology/core/sosa-common.ttl declares http://www.w3.org/ns/sosa/Asset
2026-04-14T02:19:03.2415908Z - ssn/rdf/ontology/core/sosa-common.ttl declares http://www.w3.org/ns/sosa/Deployment
2026-04-14T02:19:03.2416441Z - ssn/rdf/ontology/core/sosa-common.ttl declares http://www.w3.org/ns/sosa/Execution
2026-04-14T02:19:03.2417000Z - ssn/rdf/ontology/core/sosa-common.ttl declares http://www.w3.org/ns/sosa/ExecutionCollection
2026-04-14T02:19:03.2417591Z - ssn/rdf/ontology/core/sosa-common.ttl declares http://www.w3.org/ns/sosa/FeatureOfInterest
2026-04-14T02:19:03.2418136Z - ssn/rdf/ontology/core/sosa-common.ttl declares http://www.w3.org/ns/sosa/Platform
2026-04-14T02:19:03.2418659Z - ssn/rdf/ontology/core/sosa-common.ttl declares http://www.w3.org/ns/sosa/Procedure
2026-04-14T02:19:03.2419186Z - ssn/rdf/ontology/core/sosa-common.ttl declares http://www.w3.org/ns/sosa/Property
2026-04-14T02:19:03.2419697Z - ssn/rdf/ontology/core/sosa-common.ttl declares http://www.w3.org/ns/sosa/Result
2026-04-14T02:19:03.2420203Z - ssn/rdf/ontology/core/sosa-common.ttl declares http://www.w3.org/ns/sosa/System
2026-04-14T02:19:03.2420855Z - ssn/rdf/ontology/core/sosa-common.ttl declares http://www.w3.org/ns/sosa/deployedAsset
2026-04-14T02:19:03.2421435Z - ssn/rdf/ontology/core/sosa-common.ttl declares http://www.w3.org/ns/sosa/deployedOnPlatform
2026-04-14T02:19:03.2422011Z - ssn/rdf/ontology/core/sosa-common.ttl declares http://www.w3.org/ns/sosa/deployedSystem
2026-04-14T02:19:03.2422545Z - ssn/rdf/ontology/core/sosa-common.ttl declares http://www.w3.org/ns/sosa/endTime
2026-04-14T02:19:03.2423071Z - ssn/rdf/ontology/core/sosa-common.ttl declares http://www.w3.org/ns/sosa/forProperty
2026-04-14T02:19:03.2423612Z - ssn/rdf/ontology/core/sosa-common.ttl declares http://www.w3.org/ns/sosa/hasDeployment
2026-04-14T02:19:03.2424197Z - ssn/rdf/ontology/core/sosa-common.ttl declares http://www.w3.org/ns/sosa/hasFeatureOfInterest
2026-04-14T02:19:03.2424895Z - ssn/rdf/ontology/core/sosa-common.ttl declares http://www.w3.org/ns/sosa/hasInput
2026-04-14T02:19:03.2425436Z - ssn/rdf/ontology/core/sosa-common.ttl declares http://www.w3.org/ns/sosa/hasInputValue
2026-04-14T02:19:03.2425979Z - ssn/rdf/ontology/core/sosa-common.ttl declares http://www.w3.org/ns/sosa/hasMember
2026-04-14T02:19:03.2426496Z - ssn/rdf/ontology/core/sosa-common.ttl declares http://www.w3.org/ns/sosa/hasOutput
2026-04-14T02:19:03.2427030Z - ssn/rdf/ontology/core/sosa-common.ttl declares http://www.w3.org/ns/sosa/hasProcedure
2026-04-14T02:19:03.2427568Z - ssn/rdf/ontology/core/sosa-common.ttl declares http://www.w3.org/ns/sosa/hasProperty
2026-04-14T02:19:03.2428097Z - ssn/rdf/ontology/core/sosa-common.ttl declares http://www.w3.org/ns/sosa/hasResult
2026-04-14T02:19:03.2428643Z - ssn/rdf/ontology/core/sosa-common.ttl declares http://www.w3.org/ns/sosa/hasSimpleResult
2026-04-14T02:19:03.2429196Z - ssn/rdf/ontology/core/sosa-common.ttl declares http://www.w3.org/ns/sosa/hasSubSystem
2026-04-14T02:19:03.2429806Z - ssn/rdf/ontology/core/sosa-common.ttl declares http://www.w3.org/ns/sosa/hasUltimateFeatureOfInterest
2026-04-14T02:19:03.2430390Z - ssn/rdf/ontology/core/sosa-common.ttl declares http://www.w3.org/ns/sosa/hosts
2026-04-14T02:19:03.2430921Z - ssn/rdf/ontology/core/sosa-common.ttl declares http://www.w3.org/ns/sosa/implementedBy
2026-04-14T02:19:03.2431472Z - ssn/rdf/ontology/core/sosa-common.ttl declares http://www.w3.org/ns/sosa/implements
2026-04-14T02:19:03.2432002Z - ssn/rdf/ontology/core/sosa-common.ttl declares http://www.w3.org/ns/sosa/inDeployment
2026-04-14T02:19:03.2432536Z - ssn/rdf/ontology/core/sosa-common.ttl declares http://www.w3.org/ns/sosa/inputFor
2026-04-14T02:19:03.2433102Z - ssn/rdf/ontology/core/sosa-common.ttl declares http://www.w3.org/ns/sosa/inputValueForExecution
2026-04-14T02:19:03.2433828Z - ssn/rdf/ontology/core/sosa-common.ttl declares http://www.w3.org/ns/sosa/isFeatureOfInterestOf
2026-04-14T02:19:03.2434412Z - ssn/rdf/ontology/core/sosa-common.ttl declares http://www.w3.org/ns/sosa/isHostedBy
2026-04-14T02:19:03.2435158Z - ssn/rdf/ontology/core/sosa-common.ttl declares http://www.w3.org/ns/sosa/isMemberOf
2026-04-14T02:19:03.2435722Z - ssn/rdf/ontology/core/sosa-common.ttl declares http://www.w3.org/ns/sosa/isProcedureFor
2026-04-14T02:19:03.2436270Z - ssn/rdf/ontology/core/sosa-common.ttl declares http://www.w3.org/ns/sosa/isPropertyOf
2026-04-14T02:19:03.2436805Z - ssn/rdf/ontology/core/sosa-common.ttl declares http://www.w3.org/ns/sosa/isResultOf
2026-04-14T02:19:03.2437342Z - ssn/rdf/ontology/core/sosa-common.ttl declares http://www.w3.org/ns/sosa/isSubSystemOf
2026-04-14T02:19:03.2437954Z - ssn/rdf/ontology/core/sosa-common.ttl declares http://www.w3.org/ns/sosa/isUltimateFeatureOfInterestOf
2026-04-14T02:19:03.2438567Z - ssn/rdf/ontology/core/sosa-common.ttl declares http://www.w3.org/ns/sosa/madeBySystem
2026-04-14T02:19:03.2439109Z - ssn/rdf/ontology/core/sosa-common.ttl declares http://www.w3.org/ns/sosa/madeExecution
2026-04-14T02:19:03.2439661Z - ssn/rdf/ontology/core/sosa-common.ttl declares http://www.w3.org/ns/sosa/outputFor
2026-04-14T02:19:03.2440221Z - ssn/rdf/ontology/core/sosa-common.ttl declares http://www.w3.org/ns/sosa/phenomenonOccurred
2026-04-14T02:19:03.2440930Z - ssn/rdf/ontology/core/sosa-common.ttl declares http://www.w3.org/ns/sosa/phenomenonTime
2026-04-14T02:19:03.2441492Z - ssn/rdf/ontology/core/sosa-common.ttl declares http://www.w3.org/ns/sosa/propertyFor
2026-04-14T02:19:03.2442030Z - ssn/rdf/ontology/core/sosa-common.ttl declares http://www.w3.org/ns/sosa/resultTime
2026-04-14T02:19:03.2442561Z - ssn/rdf/ontology/core/sosa-common.ttl declares http://www.w3.org/ns/sosa/startTime
2026-04-14T02:19:03.2443106Z - ssn/rdf/ontology/core/sosa-common.ttl declares http://www.w3.org/ns/sosa/systemDeployment
2026-04-14T02:19:03.2443690Z - ssn/rdf/ontology/core/sosa-common.ttl declares http://www.w3.org/ns/sosa/usedForExecution
2026-04-14T02:19:03.2444258Z - ssn/rdf/ontology/core/sosa-common.ttl declares http://www.w3.org/ns/sosa/usedProcedure
2026-04-14T02:19:03.2445014Z - ssn/rdf/ontology/core/sosa-deprecated.ttl declares http://www.w3.org/ns/sosa/ActuatableProperty
2026-04-14T02:19:03.2445646Z - ssn/rdf/ontology/core/sosa-deprecated.ttl declares http://www.w3.org/ns/sosa/ObservableProperty
2026-04-14T02:19:03.2446252Z - ssn/rdf/ontology/core/sosa-observation.ttl declares http://www.w3.org/ns/sosa/Observation
2026-04-14T02:19:03.2446869Z - ssn/rdf/ontology/core/sosa-observation.ttl declares http://www.w3.org/ns/sosa/ObservationCollection
2026-04-14T02:19:03.2447514Z - ssn/rdf/ontology/core/sosa-observation.ttl declares http://www.w3.org/ns/sosa/ObservingProcedure
2026-04-14T02:19:03.2448095Z - ssn/rdf/ontology/core/sosa-observation.ttl declares http://www.w3.org/ns/sosa/Sensor
2026-04-14T02:19:03.2448652Z - ssn/rdf/ontology/core/sosa-observation.ttl declares http://www.w3.org/ns/sosa/Stimulus
2026-04-14T02:19:03.2449196Z - ssn/rdf/ontology/core/sosa-observation.ttl declares http://www.w3.org/ns/sosa/detects
2026-04-14T02:19:03.2449757Z - ssn/rdf/ontology/core/sosa-observation.ttl declares http://www.w3.org/ns/sosa/hasProxy
2026-04-14T02:19:03.2450333Z - ssn/rdf/ontology/core/sosa-observation.ttl declares http://www.w3.org/ns/sosa/isDetectedBy
2026-04-14T02:19:03.2450923Z - ssn/rdf/ontology/core/sosa-observation.ttl declares http://www.w3.org/ns/sosa/isObservedBy
2026-04-14T02:19:03.2451502Z - ssn/rdf/ontology/core/sosa-observation.ttl declares http://www.w3.org/ns/sosa/isProxyFor
2026-04-14T02:19:03.2452086Z - ssn/rdf/ontology/core/sosa-observation.ttl declares http://www.w3.org/ns/sosa/madeBySensor
2026-04-14T02:19:03.2452701Z - ssn/rdf/ontology/core/sosa-observation.ttl declares http://www.w3.org/ns/sosa/madeObservation
2026-04-14T02:19:03.2453338Z - ssn/rdf/ontology/core/sosa-observation.ttl declares http://www.w3.org/ns/sosa/observationRelatedTo
2026-04-14T02:19:03.2454079Z - ssn/rdf/ontology/core/sosa-observation.ttl declares http://www.w3.org/ns/sosa/observedProperty
2026-04-14T02:19:03.2454684Z - ssn/rdf/ontology/core/sosa-observation.ttl declares http://www.w3.org/ns/sosa/observes
2026-04-14T02:19:03.2455507Z - ssn/rdf/ontology/core/sosa-observation.ttl declares http://www.w3.org/ns/sosa/originated
2026-04-14T02:19:03.2456098Z - ssn/rdf/ontology/core/sosa-observation.ttl declares http://www.w3.org/ns/sosa/qualityOf
2026-04-14T02:19:03.2456696Z - ssn/rdf/ontology/core/sosa-observation.ttl declares http://www.w3.org/ns/sosa/relatedObservation
2026-04-14T02:19:03.2457306Z - ssn/rdf/ontology/core/sosa-observation.ttl declares http://www.w3.org/ns/sosa/resultQuality
2026-04-14T02:19:03.2457902Z - ssn/rdf/ontology/core/sosa-observation.ttl declares http://www.w3.org/ns/sosa/wasObservedBy
2026-04-14T02:19:03.2458518Z - ssn/rdf/ontology/core/sosa-observation.ttl declares http://www.w3.org/ns/sosa/wasOriginatedBy
2026-04-14T02:19:03.2459168Z - ssn/rdf/ontology/extensions/sosa-oms.ttl declares http://www.w3.org/ns/sosa/oms/PreparationProcedure
2026-04-14T02:19:03.2459812Z - ssn/rdf/ontology/extensions/sosa-oms.ttl declares http://www.w3.org/ns/sosa/oms/PreparationStep
2026-04-14T02:19:03.2460450Z - ssn/rdf/ontology/extensions/sosa-oms.ttl declares http://www.w3.org/ns/sosa/oms/hasPreparationStep
2026-04-14T02:19:03.2461202Z - ssn/rdf/ontology/extensions/sosa-oms.ttl declares http://www.w3.org/ns/sosa/oms/madeOnPlatform
2026-04-14T02:19:03.2461867Z - ssn/rdf/ontology/extensions/sosa-oms.ttl declares http://www.w3.org/ns/sosa/oms/makesObservationCollection
2026-04-14T02:19:03.2462509Z - ssn/rdf/ontology/extensions/sosa-oms.ttl declares http://www.w3.org/ns/sosa/oms/metadata
2026-04-14T02:19:03.2463109Z - ssn/rdf/ontology/extensions/sosa-oms.ttl declares http://www.w3.org/ns/sosa/oms/observationType
2026-04-14T02:19:03.2463726Z - ssn/rdf/ontology/extensions/sosa-oms.ttl declares http://www.w3.org/ns/sosa/oms/preparedSample
2026-04-14T02:19:03.2464350Z - ssn/rdf/ontology/extensions/sosa-oms.ttl declares http://www.w3.org/ns/sosa/oms/processingDetails
2026-04-14T02:19:03.2465124Z - ssn/rdf/ontology/extensions/sosa-oms.ttl declares http://www.w3.org/ns/sosa/oms/relatedSampling
2026-04-14T02:19:03.2465772Z - ssn/rdf/ontology/extensions/sosa-oms.ttl declares http://www.w3.org/ns/sosa/oms/samplePreparationStep
2026-04-14T02:19:03.2466396Z - ssn/rdf/ontology/extensions/sosa-oms.ttl declares http://www.w3.org/ns/sosa/oms/validTime
2026-04-14T02:19:03.2466981Z - ssn/rdf/ontology/core/sosa-sampling.ttl declares http://www.w3.org/ns/sosa/MaterialSample
2026-04-14T02:19:03.2467535Z - ssn/rdf/ontology/core/sosa-sampling.ttl declares http://www.w3.org/ns/sosa/Sample
2026-04-14T02:19:03.2468096Z - ssn/rdf/ontology/core/sosa-sampling.ttl declares http://www.w3.org/ns/sosa/SampleCollection
2026-04-14T02:19:03.2468665Z - ssn/rdf/ontology/core/sosa-sampling.ttl declares http://www.w3.org/ns/sosa/Sampler
2026-04-14T02:19:03.2469195Z - ssn/rdf/ontology/core/sosa-sampling.ttl declares http://www.w3.org/ns/sosa/Sampling
2026-04-14T02:19:03.2469772Z - ssn/rdf/ontology/core/sosa-sampling.ttl declares http://www.w3.org/ns/sosa/SamplingCollection
2026-04-14T02:19:03.2470374Z - ssn/rdf/ontology/core/sosa-sampling.ttl declares http://www.w3.org/ns/sosa/SamplingProcedure
2026-04-14T02:19:03.2470961Z - ssn/rdf/ontology/core/sosa-sampling.ttl declares http://www.w3.org/ns/sosa/SpatialSample
2026-04-14T02:19:03.2471549Z - ssn/rdf/ontology/core/sosa-sampling.ttl declares http://www.w3.org/ns/sosa/StatisticalSample
2026-04-14T02:19:03.2472169Z - ssn/rdf/ontology/core/sosa-sampling.ttl declares http://www.w3.org/ns/sosa/featureHasUltimateSample
2026-04-14T02:19:03.2472795Z - ssn/rdf/ontology/core/sosa-sampling.ttl declares http://www.w3.org/ns/sosa/hasOriginalSample
2026-04-14T02:19:03.2473362Z - ssn/rdf/ontology/core/sosa-sampling.ttl declares http://www.w3.org/ns/sosa/hasSample
2026-04-14T02:19:03.2473937Z - ssn/rdf/ontology/core/sosa-sampling.ttl declares http://www.w3.org/ns/sosa/isOriginalSampleOf
2026-04-14T02:19:03.2474671Z - ssn/rdf/ontology/core/sosa-sampling.ttl declares http://www.w3.org/ns/sosa/isResultOfMadeBySampler
2026-04-14T02:19:03.2475559Z - ssn/rdf/ontology/core/sosa-sampling.ttl declares http://www.w3.org/ns/sosa/isResultOfUsedProcedure
2026-04-14T02:19:03.2476172Z - ssn/rdf/ontology/core/sosa-sampling.ttl declares http://www.w3.org/ns/sosa/isSampleOf
2026-04-14T02:19:03.2476773Z - ssn/rdf/ontology/core/sosa-sampling.ttl declares http://www.w3.org/ns/sosa/isSampleOfUltimateFOI
2026-04-14T02:19:03.2477379Z - ssn/rdf/ontology/core/sosa-sampling.ttl declares http://www.w3.org/ns/sosa/madeBySampler
2026-04-14T02:19:03.2477954Z - ssn/rdf/ontology/core/sosa-sampling.ttl declares http://www.w3.org/ns/sosa/madeSampling
2026-04-14T02:19:03.2478545Z - ssn/rdf/ontology/core/sosa-sampling.ttl declares http://www.w3.org/ns/sosa/madeSamplingHasResult
2026-04-14T02:19:03.2479189Z - ssn/rdf/ontology/core/sosa-sampling.ttl declares http://www.w3.org/ns/sosa/usedForExecutionHasResult
2026-04-14T02:19:03.2479900Z - ssn/rdf/ontology/extensions/sample-relations.ttl declares http://www.w3.org/ns/sosa/sampling/RelationshipNature
2026-04-14T02:19:03.2480655Z - ssn/rdf/ontology/extensions/sample-relations.ttl declares http://www.w3.org/ns/sosa/sampling/SampleRelationship
2026-04-14T02:19:03.2481410Z - ssn/rdf/ontology/extensions/sample-relations.ttl declares http://www.w3.org/ns/sosa/sampling/hasSampleRelationship
2026-04-14T02:19:03.2482289Z - ssn/rdf/ontology/extensions/sample-relations.ttl declares http://www.w3.org/ns/sosa/sampling/natureOfRelationship
2026-04-14T02:19:03.2483028Z - ssn/rdf/ontology/extensions/sample-relations.ttl declares http://www.w3.org/ns/sosa/sampling/relatedSample
2026-04-14T02:19:03.2483828Z - ssn/rdf/vocabularies/system-capabilities-properties.ttl declares http://www.w3.org/ns/sosa/system-capability-properties#Accuracy
2026-04-14T02:19:03.2484741Z - ssn/rdf/vocabularies/system-capabilities-properties.ttl declares http://www.w3.org/ns/sosa/system-capability-properties#BatteryLifetime
2026-04-14T02:19:03.2485839Z - ssn/rdf/vocabularies/system-capabilities-properties.ttl declares http://www.w3.org/ns/sosa/system-capability-properties#BatteryResolution
2026-04-14T02:19:03.2486743Z - ssn/rdf/vocabularies/system-capabilities-properties.ttl declares http://www.w3.org/ns/sosa/system-capability-properties#Drift
2026-04-14T02:19:03.2487622Z - ssn/rdf/vocabularies/system-capabilities-properties.ttl declares http://www.w3.org/ns/sosa/system-capability-properties#Frequency
2026-04-14T02:19:03.2488544Z - ssn/rdf/vocabularies/system-capabilities-properties.ttl declares http://www.w3.org/ns/sosa/system-capability-properties#HumidityAccuracy
2026-04-14T02:19:03.2489434Z - ssn/rdf/vocabularies/system-capabilities-properties.ttl declares http://www.w3.org/ns/sosa/system-capability-properties#Latency
2026-04-14T02:19:03.2490388Z - ssn/rdf/vocabularies/system-capabilities-properties.ttl declares http://www.w3.org/ns/sosa/system-capability-properties#LowerDetectionLimit
2026-04-14T02:19:03.2491340Z - ssn/rdf/vocabularies/system-capabilities-properties.ttl declares http://www.w3.org/ns/sosa/system-capability-properties#MaintenanceSchedule
2026-04-14T02:19:03.2492267Z - ssn/rdf/vocabularies/system-capabilities-properties.ttl declares http://www.w3.org/ns/sosa/system-capability-properties#MaxFrequency
2026-04-14T02:19:03.2493202Z - ssn/rdf/vocabularies/system-capabilities-properties.ttl declares http://www.w3.org/ns/sosa/system-capability-properties#MaxMeasurableHumidity
2026-04-14T02:19:03.2494185Z - ssn/rdf/vocabularies/system-capabilities-properties.ttl declares http://www.w3.org/ns/sosa/system-capability-properties#MaxMeasurableTemperature
2026-04-14T02:19:03.2495376Z - ssn/rdf/vocabularies/system-capabilities-properties.ttl declares http://www.w3.org/ns/sosa/system-capability-properties#MaxOperatingPower
2026-04-14T02:19:03.2496303Z - ssn/rdf/vocabularies/system-capabilities-properties.ttl declares http://www.w3.org/ns/sosa/system-capability-properties#MinFrequency
2026-04-14T02:19:03.2497355Z - ssn/rdf/vocabularies/system-capabilities-properties.ttl declares http://www.w3.org/ns/sosa/system-capability-properties#MinMeasurableHumidity
2026-04-14T02:19:03.2498345Z - ssn/rdf/vocabularies/system-capabilities-properties.ttl declares http://www.w3.org/ns/sosa/system-capability-properties#MinMeasurableTemperature
2026-04-14T02:19:03.2499304Z - ssn/rdf/vocabularies/system-capabilities-properties.ttl declares http://www.w3.org/ns/sosa/system-capability-properties#MinOperatingPower
2026-04-14T02:19:03.2500223Z - ssn/rdf/vocabularies/system-capabilities-properties.ttl declares http://www.w3.org/ns/sosa/system-capability-properties#Precision
2026-04-14T02:19:03.2501124Z - ssn/rdf/vocabularies/system-capabilities-properties.ttl declares http://www.w3.org/ns/sosa/system-capability-properties#RFSensitivity
2026-04-14T02:19:03.2502012Z - ssn/rdf/vocabularies/system-capabilities-properties.ttl declares http://www.w3.org/ns/sosa/system-capability-properties#Resolution
2026-04-14T02:19:03.2502906Z - ssn/rdf/vocabularies/system-capabilities-properties.ttl declares http://www.w3.org/ns/sosa/system-capability-properties#ResponseTime
2026-04-14T02:19:03.2503803Z - ssn/rdf/vocabularies/system-capabilities-properties.ttl declares http://www.w3.org/ns/sosa/system-capability-properties#Selectivity
2026-04-14T02:19:03.2504685Z - ssn/rdf/vocabularies/system-capabilities-properties.ttl declares http://www.w3.org/ns/sosa/system-capability-properties#Sensitivity
2026-04-14T02:19:03.2505863Z - ssn/rdf/vocabularies/system-capabilities-properties.ttl declares http://www.w3.org/ns/sosa/system-capability-properties#TemperatureAccuracy
2026-04-14T02:19:03.2506813Z - ssn/rdf/vocabularies/system-capabilities-properties.ttl declares http://www.w3.org/ns/sosa/system-capability-properties#TemperaturePrecision
2026-04-14T02:19:03.2507769Z - ssn/rdf/vocabularies/system-capabilities-properties.ttl declares http://www.w3.org/ns/sosa/system-capability-properties#TemperatureResolution
2026-04-14T02:19:03.2508732Z - ssn/rdf/vocabularies/system-capabilities-properties.ttl declares http://www.w3.org/ns/sosa/system-capability-properties#UpperDetectionLimit
2026-04-14T02:19:03.2509642Z - ssn/rdf/vocabularies/system-environment-properties.ttl declares http://www.w3.org/ns/sosa/system-environment-properties#Altitude
2026-04-14T02:19:03.2510536Z - ssn/rdf/vocabularies/system-environment-properties.ttl declares http://www.w3.org/ns/sosa/system-environment-properties#AmbientHumidity
2026-04-14T02:19:03.2511466Z - ssn/rdf/vocabularies/system-environment-properties.ttl declares http://www.w3.org/ns/sosa/system-environment-properties#AmbientLightLevel
2026-04-14T02:19:03.2512380Z - ssn/rdf/vocabularies/system-environment-properties.ttl declares http://www.w3.org/ns/sosa/system-environment-properties#AmbientPressure
2026-04-14T02:19:03.2513309Z - ssn/rdf/vocabularies/system-environment-properties.ttl declares http://www.w3.org/ns/sosa/system-environment-properties#AmbientTemperature
2026-04-14T02:19:03.3141664Z - ssn/rdf/vocabularies/system-environment-properties.ttl declares http://www.w3.org/ns/sosa/system-environment-properties#DeploymentEnvironmentType
2026-04-14T02:19:03.3143667Z - ssn/rdf/vocabularies/system-environment-properties.ttl declares http://www.w3.org/ns/sosa/system-environment-properties#DeploymentLocation
2026-04-14T02:19:03.3145383Z - ssn/rdf/vocabularies/system-environment-properties.ttl declares http://www.w3.org/ns/sosa/system-environment-properties#ExposureToVibration
2026-04-14T02:19:03.3146837Z - ssn/rdf/vocabularies/system-environment-properties.ttl declares http://www.w3.org/ns/sosa/system-environment-properties#MagneticInterferenceLevel
2026-04-14T02:19:03.3148290Z - ssn/rdf/vocabularies/system-environment-properties.ttl declares http://www.w3.org/ns/sosa/system-environment-properties#MaxAmbientRelativeHumidity
2026-04-14T02:19:03.3149713Z - ssn/rdf/vocabularies/system-environment-properties.ttl declares http://www.w3.org/ns/sosa/system-environment-properties#MaxAmbientTemperature
2026-04-14T02:19:03.3151324Z - ssn/rdf/vocabularies/system-environment-properties.ttl declares http://www.w3.org/ns/sosa/system-environment-properties#MinAmbientRelativeHumidity
2026-04-14T02:19:03.3152518Z - ssn/rdf/vocabularies/system-environment-properties.ttl declares http://www.w3.org/ns/sosa/system-environment-properties#MinAmbientTemperature
2026-04-14T02:19:03.3153619Z - ssn/rdf/vocabularies/system-environment-properties.ttl declares http://www.w3.org/ns/sosa/system-environment-properties#PollutionLevel
2026-04-14T02:19:03.3154668Z - ssn/rdf/vocabularies/system-environment-properties.ttl declares http://www.w3.org/ns/sosa/system-environment-properties#Salinity
2026-04-14T02:19:03.3155950Z - ssn/rdf/vocabularies/system-environment-properties.ttl declares http://www.w3.org/ns/sosa/system-environment-properties#UVExposure
2026-04-14T02:19:03.3157027Z - ssn/rdf/vocabularies/system-environment-properties.ttl declares http://www.w3.org/ns/sosa/system-environment-properties#WindDirection
2026-04-14T02:19:03.3158093Z - ssn/rdf/vocabularies/system-environment-properties.ttl declares http://www.w3.org/ns/sosa/system-environment-properties#WindSpeed
2026-04-14T02:19:03.3158938Z - ssn/rdf/ontology/extensions/sosa-system.ttl declares http://www.w3.org/ns/sosa/Battery
2026-04-14T02:19:03.3159668Z - ssn/rdf/ontology/extensions/sosa-system.ttl declares http://www.w3.org/ns/sosa/NormalOperatingConditions
2026-04-14T02:19:03.3160445Z - ssn/rdf/ontology/extensions/sosa-system.ttl declares http://www.w3.org/ns/sosa/OperatingConditions
2026-04-14T02:19:03.3161380Z - ssn/rdf/ontology/extensions/sosa-system.ttl declares http://www.w3.org/ns/sosa/SuboptimalOperatingConditions
2026-04-14T02:19:03.3162087Z - ssn/rdf/ontology/extensions/sosa-system.ttl declares http://www.w3.org/ns/sosa/SurvivableConditions
2026-04-14T02:19:03.3162747Z - ssn/rdf/ontology/extensions/sosa-system.ttl declares http://www.w3.org/ns/sosa/hasOperatingConditions
2026-04-14T02:19:03.3163407Z - ssn/rdf/ontology/extensions/sosa-system.ttl declares http://www.w3.org/ns/sosa/hasSystemCapability
2026-04-14T02:19:03.3164136Z - ssn/rdf/ontology/extensions/sosa-system.ttl declares http://www.w3.org/ns/sosa/hasValidityContext
2026-04-14T02:19:03.3164748Z - ssn/rdf/ontology/core/ssn-deprecated.ttl declares http://www.w3.org/ns/ssn/Deployment
2026-04-14T02:19:03.3165461Z - ssn/rdf/ontology/core/ssn-deprecated.ttl declares http://www.w3.org/ns/ssn/Input
2026-04-14T02:19:03.3165987Z - ssn/rdf/ontology/core/ssn-deprecated.ttl declares http://www.w3.org/ns/ssn/Output
2026-04-14T02:19:03.3166521Z - ssn/rdf/ontology/core/ssn-deprecated.ttl declares http://www.w3.org/ns/ssn/Property
2026-04-14T02:19:03.3167052Z - ssn/rdf/ontology/core/ssn-deprecated.ttl declares http://www.w3.org/ns/ssn/Stimulus
2026-04-14T02:19:03.3167575Z - ssn/rdf/ontology/core/ssn-deprecated.ttl declares http://www.w3.org/ns/ssn/System
2026-04-14T02:19:03.3168115Z - ssn/rdf/ontology/core/ssn-deprecated.ttl declares http://www.w3.org/ns/ssn/deployedAsset
2026-04-14T02:19:03.3168723Z - ssn/rdf/ontology/core/ssn-deprecated.ttl declares http://www.w3.org/ns/ssn/deployedOnPlatform
2026-04-14T02:19:03.3169330Z - ssn/rdf/ontology/core/ssn-deprecated.ttl declares http://www.w3.org/ns/ssn/deployedSystem
2026-04-14T02:19:03.3169892Z - ssn/rdf/ontology/core/ssn-deprecated.ttl declares http://www.w3.org/ns/ssn/detects
2026-04-14T02:19:03.3170442Z - ssn/rdf/ontology/core/ssn-deprecated.ttl declares http://www.w3.org/ns/ssn/forProperty
2026-04-14T02:19:03.3171021Z - ssn/rdf/ontology/core/ssn-deprecated.ttl declares http://www.w3.org/ns/ssn/hasDeployment
2026-04-14T02:19:03.3171569Z - ssn/rdf/ontology/core/ssn-deprecated.ttl declares http://www.w3.org/ns/ssn/hasInput
2026-04-14T02:19:03.3172095Z - ssn/rdf/ontology/core/ssn-deprecated.ttl declares http://www.w3.org/ns/ssn/hasOutput
2026-04-14T02:19:03.3172639Z - ssn/rdf/ontology/core/ssn-deprecated.ttl declares http://www.w3.org/ns/ssn/hasProperty
2026-04-14T02:19:03.3173196Z - ssn/rdf/ontology/core/ssn-deprecated.ttl declares http://www.w3.org/ns/ssn/hasSubSystem
2026-04-14T02:19:03.3173752Z - ssn/rdf/ontology/core/ssn-deprecated.ttl declares http://www.w3.org/ns/ssn/implementedBy
2026-04-14T02:19:03.3174432Z - ssn/rdf/ontology/core/ssn-deprecated.ttl declares http://www.w3.org/ns/ssn/implements
2026-04-14T02:19:03.3175106Z - ssn/rdf/ontology/core/ssn-deprecated.ttl declares http://www.w3.org/ns/ssn/inDeployment
2026-04-14T02:19:03.3175671Z - ssn/rdf/ontology/core/ssn-deprecated.ttl declares http://www.w3.org/ns/ssn/isPropertyOf
2026-04-14T02:19:03.3176242Z - ssn/rdf/ontology/core/ssn-deprecated.ttl declares http://www.w3.org/ns/ssn/isProxyFor
2026-04-14T02:19:03.3176810Z - ssn/rdf/ontology/core/ssn-deprecated.ttl declares http://www.w3.org/ns/ssn/wasOriginatedBy
2026-04-14T02:19:03.3177163Z 
2026-04-14T02:19:03.3177274Z === Undefined SOSA/SSN Terms in Examples ===
2026-04-14T02:19:03.3177825Z All SOSA/SSN terms in examples are properly defined 🎉
2026-04-14T02:19:03.3178046Z 
2026-04-14T02:19:03.3178153Z === SOSA/SSN Terms not present in Examples ===
2026-04-14T02:19:03.3178503Z ⚠️ some terms are not present in any example:
2026-04-14T02:19:03.3178816Z - http://www.w3.org/ns/sosa/ActuatableProperty
2026-04-14T02:19:03.3179128Z - http://www.w3.org/ns/sosa/ActuatingProcedure
2026-04-14T02:19:03.3179424Z - http://www.w3.org/ns/sosa/ActuationCollection
2026-04-14T02:19:03.3179711Z - http://www.w3.org/ns/sosa/Asset
2026-04-14T02:19:03.3179956Z - http://www.w3.org/ns/sosa/Execution
2026-04-14T02:19:03.3180230Z - http://www.w3.org/ns/sosa/ExecutionCollection
2026-04-14T02:19:03.3180655Z - http://www.w3.org/ns/sosa/ObservableProperty
2026-04-14T02:19:03.3180946Z - http://www.w3.org/ns/sosa/OperatingConditions
2026-04-14T02:19:03.3181224Z - http://www.w3.org/ns/sosa/Procedure
2026-04-14T02:19:03.3181470Z - http://www.w3.org/ns/sosa/Result
2026-04-14T02:19:03.3181733Z - http://www.w3.org/ns/sosa/SamplingCollection
2026-04-14T02:19:03.3182014Z - http://www.w3.org/ns/sosa/SpatialSample
2026-04-14T02:19:03.3182292Z - http://www.w3.org/ns/sosa/StatisticalSample
2026-04-14T02:19:03.3182616Z - http://www.w3.org/ns/sosa/SuboptimalOperatingConditions
2026-04-14T02:19:03.3182941Z - http://www.w3.org/ns/sosa/deployedAsset
2026-04-14T02:19:03.3183245Z - http://www.w3.org/ns/sosa/featureHasUltimateSample
2026-04-14T02:19:03.3183549Z - http://www.w3.org/ns/sosa/hasDeployment
2026-04-14T02:19:03.3183811Z - http://www.w3.org/ns/sosa/hasInput
2026-04-14T02:19:03.3184074Z - http://www.w3.org/ns/sosa/hasOriginalSample
2026-04-14T02:19:03.3184354Z - http://www.w3.org/ns/sosa/hasProcedure
2026-04-14T02:19:03.3184614Z - http://www.w3.org/ns/sosa/hasProxy
2026-04-14T02:19:03.3185129Z - http://www.w3.org/ns/sosa/implementedBy
2026-04-14T02:19:03.3185406Z - http://www.w3.org/ns/sosa/inDeployment
2026-04-14T02:19:03.3185671Z - http://www.w3.org/ns/sosa/inputFor
2026-04-14T02:19:03.3185946Z - http://www.w3.org/ns/sosa/inputValueForExecution
2026-04-14T02:19:03.3186248Z - http://www.w3.org/ns/sosa/isActedOnBy
2026-04-14T02:19:03.3186508Z - http://www.w3.org/ns/sosa/isDetectedBy
2026-04-14T02:19:03.3186787Z - http://www.w3.org/ns/sosa/isFeatureOfInterestOf
2026-04-14T02:19:03.3187076Z - http://www.w3.org/ns/sosa/isMemberOf
2026-04-14T02:19:03.3187350Z - http://www.w3.org/ns/sosa/isOriginalSampleOf
2026-04-14T02:19:03.3187636Z - http://www.w3.org/ns/sosa/isProcedureFor
2026-04-14T02:19:03.3187899Z - http://www.w3.org/ns/sosa/isSubSystemOf
2026-04-14T02:19:03.3188211Z - http://www.w3.org/ns/sosa/isUltimateFeatureOfInterestOf
2026-04-14T02:19:03.3188519Z - http://www.w3.org/ns/sosa/madeBySystem
2026-04-14T02:19:03.3188786Z - http://www.w3.org/ns/sosa/madeExecution
2026-04-14T02:19:03.3189043Z - http://www.w3.org/ns/sosa/madeSampling
2026-04-14T02:19:03.3189313Z - http://www.w3.org/ns/sosa/observationRelatedTo
2026-04-14T02:19:03.3189632Z - http://www.w3.org/ns/sosa/oms/PreparationProcedure
2026-04-14T02:19:03.3189942Z - http://www.w3.org/ns/sosa/oms/PreparationStep
2026-04-14T02:19:03.3190247Z - http://www.w3.org/ns/sosa/oms/hasPreparationStep
2026-04-14T02:19:03.3190543Z - http://www.w3.org/ns/sosa/oms/madeOnPlatform
2026-04-14T02:19:03.3190865Z - http://www.w3.org/ns/sosa/oms/makesObservationCollection
2026-04-14T02:19:03.3191333Z - http://www.w3.org/ns/sosa/oms/metadata
2026-04-14T02:19:03.3191611Z - http://www.w3.org/ns/sosa/oms/observationType
2026-04-14T02:19:03.3191903Z - http://www.w3.org/ns/sosa/oms/preparedSample
2026-04-14T02:19:03.3192191Z - http://www.w3.org/ns/sosa/oms/processingDetails
2026-04-14T02:19:03.3192491Z - http://www.w3.org/ns/sosa/oms/relatedSampling
2026-04-14T02:19:03.3192802Z - http://www.w3.org/ns/sosa/oms/samplePreparationStep
2026-04-14T02:19:03.3193101Z - http://www.w3.org/ns/sosa/oms/validTime
2026-04-14T02:19:03.3193356Z - http://www.w3.org/ns/sosa/originated
2026-04-14T02:19:03.3193612Z - http://www.w3.org/ns/sosa/outputFor
2026-04-14T02:19:03.3193879Z - http://www.w3.org/ns/sosa/phenomenonOccurred
2026-04-14T02:19:03.3194152Z - http://www.w3.org/ns/sosa/propertyFor
2026-04-14T02:19:03.3194409Z - http://www.w3.org/ns/sosa/qualityOf
2026-04-14T02:19:03.3194691Z - http://www.w3.org/ns/sosa/relatedObservation
2026-04-14T02:19:03.3195181Z - http://www.w3.org/ns/sosa/system-capability-properties#Accuracy
2026-04-14T02:19:03.3195598Z - http://www.w3.org/ns/sosa/system-capability-properties#Drift
2026-04-14T02:19:03.3195996Z - http://www.w3.org/ns/sosa/system-capability-properties#Frequency
2026-04-14T02:19:03.3196414Z - http://www.w3.org/ns/sosa/system-capability-properties#Latency
2026-04-14T02:19:03.3196862Z - http://www.w3.org/ns/sosa/system-capability-properties#LowerDetectionLimit
2026-04-14T02:19:03.3197472Z - http://www.w3.org/ns/sosa/system-capability-properties#MaintenanceSchedule
2026-04-14T02:19:03.3197947Z - http://www.w3.org/ns/sosa/system-capability-properties#MaxOperatingPower
2026-04-14T02:19:03.3198415Z - http://www.w3.org/ns/sosa/system-capability-properties#MinOperatingPower
2026-04-14T02:19:03.3198855Z - http://www.w3.org/ns/sosa/system-capability-properties#Precision
2026-04-14T02:19:03.3199263Z - http://www.w3.org/ns/sosa/system-capability-properties#Resolution
2026-04-14T02:19:03.3199685Z - http://www.w3.org/ns/sosa/system-capability-properties#ResponseTime
2026-04-14T02:19:03.3200108Z - http://www.w3.org/ns/sosa/system-capability-properties#Selectivity
2026-04-14T02:19:03.3200521Z - http://www.w3.org/ns/sosa/system-capability-properties#Sensitivity
2026-04-14T02:19:03.3200967Z - http://www.w3.org/ns/sosa/system-capability-properties#TemperaturePrecision
2026-04-14T02:19:03.3201441Z - http://www.w3.org/ns/sosa/system-capability-properties#UpperDetectionLimit
2026-04-14T02:19:03.3201891Z - http://www.w3.org/ns/sosa/system-environment-properties#Altitude
2026-04-14T02:19:03.3202322Z - http://www.w3.org/ns/sosa/system-environment-properties#AmbientLightLevel
2026-04-14T02:19:03.3202786Z - http://www.w3.org/ns/sosa/system-environment-properties#AmbientPressure
2026-04-14T02:19:03.3203280Z - http://www.w3.org/ns/sosa/system-environment-properties#DeploymentEnvironmentType
2026-04-14T02:19:03.3203785Z - http://www.w3.org/ns/sosa/system-environment-properties#DeploymentLocation
2026-04-14T02:19:03.3204259Z - http://www.w3.org/ns/sosa/system-environment-properties#ExposureToVibration
2026-04-14T02:19:03.3204875Z - http://www.w3.org/ns/sosa/system-environment-properties#MagneticInterferenceLevel
2026-04-14T02:19:03.3205370Z - http://www.w3.org/ns/sosa/system-environment-properties#PollutionLevel
2026-04-14T02:19:03.3205794Z - http://www.w3.org/ns/sosa/system-environment-properties#Salinity
2026-04-14T02:19:03.3206208Z - http://www.w3.org/ns/sosa/system-environment-properties#UVExposure
2026-04-14T02:19:03.3206644Z - http://www.w3.org/ns/sosa/system-environment-properties#WindDirection
2026-04-14T02:19:03.3207065Z - http://www.w3.org/ns/sosa/system-environment-properties#WindSpeed
2026-04-14T02:19:03.3207425Z - http://www.w3.org/ns/sosa/systemDeployment
2026-04-14T02:19:03.3207704Z - http://www.w3.org/ns/sosa/usedForExecution
2026-04-14T02:19:03.3208009Z - http://www.w3.org/ns/sosa/usedForExecutionHasResult
2026-04-14T02:19:03.3208312Z - http://www.w3.org/ns/sosa/wasObservedBy
2026-04-14T02:19:03.3208575Z - http://www.w3.org/ns/ssn/Deployment
2026-04-14T02:19:03.3208827Z - http://www.w3.org/ns/ssn/Input
2026-04-14T02:19:03.3209215Z - http://www.w3.org/ns/ssn/Output
2026-04-14T02:19:03.3209464Z - http://www.w3.org/ns/ssn/Property
2026-04-14T02:19:03.3209743Z - http://www.w3.org/ns/ssn/Stimulus
2026-04-14T02:19:03.3209982Z - http://www.w3.org/ns/ssn/System
2026-04-14T02:19:03.3210221Z - http://www.w3.org/ns/ssn/deployedAsset
2026-04-14T02:19:03.3210505Z - http://www.w3.org/ns/ssn/deployedOnPlatform
2026-04-14T02:19:03.3210779Z - http://www.w3.org/ns/ssn/deployedSystem
2026-04-14T02:19:03.3211040Z - http://www.w3.org/ns/ssn/detects
2026-04-14T02:19:03.3211285Z - http://www.w3.org/ns/ssn/forProperty
2026-04-14T02:19:03.3211539Z - http://www.w3.org/ns/ssn/hasDeployment
2026-04-14T02:19:03.3211792Z - http://www.w3.org/ns/ssn/hasInput
2026-04-14T02:19:03.3212027Z - http://www.w3.org/ns/ssn/hasOutput
2026-04-14T02:19:03.3212274Z - http://www.w3.org/ns/ssn/hasProperty
2026-04-14T02:19:03.3212520Z - http://www.w3.org/ns/ssn/hasSubSystem
2026-04-14T02:19:03.3212775Z - http://www.w3.org/ns/ssn/implementedBy
2026-04-14T02:19:03.3213030Z - http://www.w3.org/ns/ssn/implements
2026-04-14T02:19:03.3213285Z - http://www.w3.org/ns/ssn/inDeployment
2026-04-14T02:19:03.3213532Z - http://www.w3.org/ns/ssn/isPropertyOf
2026-04-14T02:19:03.3213785Z - http://www.w3.org/ns/ssn/isProxyFor
2026-04-14T02:19:03.3214044Z - http://www.w3.org/ns/ssn/wasOriginatedBy
2026-04-14T02:19:03.3417252Z Post job cleanup.
2026-04-14T02:19:03.5080663Z Post job cleanup.
2026-04-14T02:19:03.6018995Z [command]/usr/bin/git version
2026-04-14T02:19:03.6060722Z git version 2.53.0
2026-04-14T02:19:03.6105516Z Temporarily overriding HOME='/home/runner/work/_temp/1fca0baf-49c5-4130-a97e-40810c64b16a' before making global git config changes
2026-04-14T02:19:03.6106935Z Adding repository directory to the temporary git global config as a safe directory
2026-04-14T02:19:03.6119754Z [command]/usr/bin/git config --global --add safe.directory /home/runner/work/sdw-sosa-ssn/sdw-sosa-ssn
2026-04-14T02:19:03.6155526Z [command]/usr/bin/git config --local --name-only --get-regexp core\.sshCommand
2026-04-14T02:19:03.6186656Z [command]/usr/bin/git submodule foreach --recursive sh -c "git config --local --name-only --get-regexp 'core\.sshCommand' && git config --local --unset-all 'core.sshCommand' || :"
2026-04-14T02:19:03.6406790Z [command]/usr/bin/git config --local --name-only --get-regexp http\.https\:\/\/github\.com\/\.extraheader
2026-04-14T02:19:03.6427340Z http.https://github.com/.extraheader
2026-04-14T02:19:03.6439723Z [command]/usr/bin/git config --local --unset-all http.https://github.com/.extraheader
2026-04-14T02:19:03.6469573Z [command]/usr/bin/git submodule foreach --recursive sh -c "git config --local --name-only --get-regexp 'http\.https\:\/\/github\.com\/\.extraheader' && git config --local --unset-all 'http.https://github.com/.extraheader' || :"
2026-04-14T02:19:03.6688008Z [command]/usr/bin/git config --local --name-only --get-regexp ^includeIf\.gitdir:
2026-04-14T02:19:03.6719254Z [command]/usr/bin/git submodule foreach --recursive git config --local --show-origin --name-only --get-regexp remote.origin.url
2026-04-14T02:19:03.7046951Z Cleaning up orphan processes
2026-04-14T02:19:03.7342362Z ##[warning]Node.js 20 actions are deprecated. The following actions are running on Node.js 20 and may not work as expected: actions/checkout@v4, actions/setup-python@v5. Actions will be forced to run with Node.js 24 by default starting June 2nd, 2026. Node.js 20 will be removed from the runner on September 16th, 2026. Please check if updated versions of these actions are available that support Node.js 24. To opt into Node.js 24 now, set the FORCE_JAVASCRIPT_ACTIONS_TO_NODE24=true environment variable on the runner or in your workflow file. Once Node.js 24 becomes the default, you can temporarily opt out by setting ACTIONS_ALLOW_USE_UNSECURE_NODE_VERSION=true. For more information see: https://github.blog/changelog/2025-09-19-deprecation-of-node-20-on-github-actions-runners/