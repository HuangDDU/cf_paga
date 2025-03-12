METHOD_ID="cf_paga"
CURRENT_VERSION=$(yq -e ".method.version" definition.yml)
VERSION_LIST=$(skopeo list-tags docker://huangzhaoyang/cf_paga | jq -r ".Tags[]" | grep -E "^[0-9]+\.[0-9]+\.[0-9]+$")
PREVIOUS_VERSION=$(echo $VERSION_LIST | tail -n 1)
if [ "$CURRENT_VERSION" != "$PREVIOUS_VERSION" ]; then
	echo "$CURRENT_VERSION > $PREVIOUS_VERSION"
	echo "$METHOD_ID is new newer version,  build, test and push docker image!"
	else
	echo "$METHOD_ID is the latest version."
fi