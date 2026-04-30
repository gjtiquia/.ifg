# format json
jq

# format json file and copy to MacOS clipboard
cat file.json | jq | pbcopy

# format MacOS clipboard json
pbpaste | jq | pbcopy
