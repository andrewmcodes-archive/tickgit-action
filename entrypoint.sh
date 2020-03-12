#!/bin/sh -l

VERSION="${INPUT_VERSION}"

if [ "$VERSION" = "latest" ]; then
  parser=".[0].assets | map(select(.name|test(\"._Linux_x86_64.tar.gz\")))[0].browser_download_url"
else
  parser=". | map(select(.tag_name == \"$VERSION\"))[0].assets | map(select(.name|test(\"._Linux_x86_64.tar.gz\")))[0].browser_download_url"
fi

url=$(curl -H "Accept: application/vnd.github.v3.raw" -s https://api.github.com/repos/augmentable-dev/tickgit/releases | jq -r "$parser")

if [ "$url" = "null" ]; then
  echo "ERROR: Version $VERSION was not found! 1>&2"
  exit 1
fi

wget -q --header='Accept:application/octet-stream' "$url"
tar -xzf "$(find . -name "*_Linux_x86_64.tar.gz")"
chmod +x tickgit

if [ "${INPUT_CSV}" = "true" ]; then
  csv_output=$(./tickgit --csv-output)
  echo "$csv_output" | sed '1s/.\{12\}//' >> todos.csv
else
  echo "/n/n$(./tickgit)/n/n"
fi
