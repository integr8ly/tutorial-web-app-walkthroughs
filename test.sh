#!/bin/sh
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
WALKTHROUGHS_DIR="$DIR/walkthroughs"

set -e 

echo "Check $WALKTHROUGHS_DIR exists"
if [ ! -d "$WALKTHROUGHS_DIR" ]; then
  echo "$WALKTHROUGHS_DIR doesn't exist"
  exit 1
fi

echo "Check at least 1 walkthrough exists in $WALKTHROUGHS_DIR"
WAKLTHROUGHS_DIRS="$(ls -d $WALKTHROUGHS_DIR/*/)"
if [ -z "$WAKLTHROUGHS_DIRS" ]; then
    echo "No walkthrough directories found in $WALKTHROUGHS_DIR"
    exit 1
fi

echo "Check each walkthrough dir"
for WALKTHROUGH_DIR in $WAKLTHROUGHS_DIRS; do
    printf "\nCheck walkthrough dir $WALKTHROUGH_DIR\n"

    # asciidoc
    ADOC_FILE="${WALKTHROUGH_DIR}walkthrough.adoc"
    echo "Check $ADOC_FILE"
    if [ ! -f "$ADOC_FILE" ]; then
        echo "$ADOC_FILE not found"
        exit 1
    fi
    echo "Validate $ADOC_FILE"
    iad -f $ADOC_FILE

    # json
    JSON_FILE="${WALKTHROUGH_DIR}walkthrough.json"
    echo "Check $JSON_FILE"
    if [ ! -f "$JSON_FILE" ]; then
        echo "$JSON_FILE not found"
        exit 1
    fi
    echo "Validate $JSON_FILE"
    ajv validate -s walkthrough-schema.json -d $JSON_FILE
done
