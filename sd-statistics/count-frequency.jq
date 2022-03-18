#!/usr/bin/jq -f
# 
# (c) Christoph Lange, Fraunhofer FIT <christoph.lange-bever@fit.fraunhofer.de>
# 
# count frequencies of keys in an array of objects

{ "key-frequencies":
 ( map(keys)
    | reduce .[] as $array ({};
                            . as $acc |
                            $acc +
                            (reduce $array[] as $m ({};
                                                    . + ($acc[$m] as $count | {($m): ($count + 1)}))))
    | to_entries | sort | from_entries ) }
