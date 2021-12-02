# Created during Gaia-X Hackathon #2 https://www.gaia-x.eu/news/events/gaia-x-hackathon-2
#
# (c) Christoph Lange, Fraunhofer FIT <christoph.lange-bever@fit.fraunhofer.de>

all: stats.json

stats.json: all.json
	jq '.hits.hits[]._source.service[].attributes.main' $<

all.json:
	./get-sds-from-catalogue > $@

