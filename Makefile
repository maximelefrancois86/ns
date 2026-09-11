#
W=..
S=$W/2000/10/swap
C=python $S/cwm.py

.SUFFIXES: .rdf .ttl .n3 .ldif

.n3.rdf:
	python $S/cwm.py --quiet --n3 $< --rdf --quiet > $@

.n3.ttl:
	python $S/cwm.py --quiet  $< --data > $@

convert :
	for i in *.n3; do make $${i/n3/ttl}; done
	for i in *.n3; do make $${i/n3/rdf}; done



trip.rdf: trip.n3
	$C --quiet trip.n3 --rdf > trip.rdf 

docker-test-up:
	docker compose up -d web

docker-test-sosa: docker-test-up
	docker compose run --rm tests sosa

docker-test-ssn: docker-test-up
	docker compose run --rm tests ssn

docker-test-all: docker-test-up
	docker compose run --rm tests all

docker-test-down:
	docker compose down --remove-orphans

sync-vocab-ssn-2023:
	bash scripts/sync-vocab-ssn-2023.sh

#ends