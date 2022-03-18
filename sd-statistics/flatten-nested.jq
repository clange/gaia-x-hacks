#!/usr/bin/jq -f
# 
# (c) Christoph Lange, Fraunhofer FIT <christoph.lange-bever@fit.fraunhofer.de>
# 
# flatten nested JSON structures, except leaving the top-level array
#
# source: https://newbedev.com/flatten-nested-json-using-jq

[ .[] |
 . as $in
   | reduce paths(scalars) as $path (
                                     {};
                                     . +
                                     { ($path | map(tostring) | join("→")): $in | getpath($path) })
]
