# get the headers
cat coffee_iot.json | jq -r '.[0] | keys_unsorted[]' | tr '\n' ',' | sed 's/,$/\n/' > coffee_iot.csv

# get the data
cat coffee_iot.json | jq -r '.[] | flatten | join(",")' | sort -u >> coffee_iot.csv
