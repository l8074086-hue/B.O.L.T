#!/bin/bash
set -e

GLOSSARY_DIR="$(dirname "$0")/_Glossary"
INDEX="$GLOSSARY_DIR/Glossary.md"

# Rebuild index: heading + sorted links to all .md files except the index itself
{
  echo "# Glossary"
  echo "A folder containing all the glossaries that will be used in the Vault."
  echo ""

  for f in "$GLOSSARY_DIR"/*.md; do
    name=$(basename "$f" .md)
    [[ "$name" == "Glossary" ]] && continue
    echo "- [[$name]]"
  done
} > "$INDEX"

echo "Updated $INDEX"
