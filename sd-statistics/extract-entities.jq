#!/usr/bin/jq -f
# 
# (c) Christoph Lange, Fraunhofer FIT <christoph.lange-bever@fit.fraunhofer.de>
# 
# extract all entities from the catalogue

[ .hits.hits[]._source.service[0].attributes.main ]
