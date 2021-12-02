# Created during Gaia-X Hackathon #2 https://www.gaia-x.eu/news/events/gaia-x-hackathon-2
#
# (c) Christoph Lange, Fraunhofer FIT <christoph.lange-bever@fit.fraunhofer.de>

all: stats.json

# count frequency of key usage
stats.json: flat-entities.json
	./count-frequency.jq $< > $@

# flatten nested JSON
flat-entities.json: entities.json
	./flatten-nested.jq $< > $@

# extract all entities from the catalogue
entities.json: all.json
	./extract-entities.jq $< > $@

# get all metadata in the catalogue
all.json:
	./get-sds-from-catalogue > $@
