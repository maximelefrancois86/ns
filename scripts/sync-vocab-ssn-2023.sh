#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SRC_DIR="$ROOT_DIR/vocab-ssn-2023"

if [[ ! -d "$SRC_DIR" ]]; then
  echo "Source directory not found: $SRC_DIR" >&2
  exit 1
fi

copy_file() {
  local src="$1"
  local dst="$2"

  if [[ ! -f "$src" ]]; then
    echo "Missing source file: $src" >&2
    return 1
  fi

  mkdir -p "$(dirname "$dst")"
  cp "$src" "$dst"
  python3 -m rdflib.tools.rdfpipe -i turtle -o json-ld "$dst" > "${dst%.ttl}.jsonld"
  python3 -m rdflib.tools.rdfpipe -i turtle -o nt "$dst" > "${dst%.ttl}.nt"
  python3 -m rdflib.tools.rdfpipe -i turtle -o xml "$dst" > "${dst%.ttl}.rdf"
  echo "copied: ${dst#$ROOT_DIR/}"
}

# 2023 modules from the temporary transition folder.
copy_file "$SRC_DIR/ontology/core/sosa.ttl" "$ROOT_DIR/sosa/2023/sosa.ttl"
copy_file "$SRC_DIR/ontology/core/ssn.ttl" "$ROOT_DIR/ssn/2023/ssn.ttl"
copy_file "$SRC_DIR/ontology/extensions/sample-relations.ttl" "$ROOT_DIR/sosa/2023/sampling/sosa-sampling.ttl"
copy_file "$SRC_DIR/ontology/extensions/sosa-system.ttl" "$ROOT_DIR/sosa/2023/systems/sosa-system.ttl"
copy_file "$SRC_DIR/ontology/extensions/sosa-oms.ttl" "$ROOT_DIR/sosa/2023/oms/sosa-oms.ttl"
copy_file "$SRC_DIR/ontology/extensions/ssn-oms.ttl" "$ROOT_DIR/ssn/2023/oms/ssn-oms.ttl"
copy_file "$SRC_DIR/ontology/alignments/sosa-oboe.ttl" "$ROOT_DIR/sosa/2023/oboe/sosa-oboe.ttl"
copy_file "$SRC_DIR/ontology/alignments/sosa-prov.ttl" "$ROOT_DIR/sosa/2023/prov/sosa-prov.ttl"
copy_file "$SRC_DIR/ontology/alignments/sosa-dul.ttl" "$ROOT_DIR/sosa/2023/dul/sosa-dul.ttl"
copy_file "$SRC_DIR/vocabularies/system-capabilities-properties.ttl" "$ROOT_DIR/sosa/2023/system-capability-properties.ttl"
copy_file "$SRC_DIR/vocabularies/system-environment-properties.ttl" "$ROOT_DIR/sosa/2023/system-environment-properties.ttl"

echo "Done. Verify redirects and regression expectations after each sync." >&2