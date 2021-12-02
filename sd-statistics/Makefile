# Created during Gaia-X Hackathon #2 https://www.gaia-x.eu/news/events/gaia-x-hackathon-2
#
# (c) Christoph Lange, Fraunhofer FIT <christoph.lange-bever@fit.fraunhofer.de>

all: stats.json

# flatten nested JSON (https://newbedev.com/flatten-nested-json-using-jq)
stats.json: entities.json
	jq '. as $$in | reduce paths(scalars) as $$path ({}; . + { ($$path | map(tostring) | join("→")): $$in | getpath($$path) })' $< > $@

# extract all entities from the catalogue
entities.json: all.json
	jq '[.hits.hits[]._source.service[0].attributes.main]' $< > $@

# get all metadata in the catalogue
all.json:
	./get-sds-from-catalogue > $@
