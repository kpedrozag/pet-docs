#!/usr/bin/env bash
# Concatenates every doc into llms-full.txt, in the order listed in llms.txt.
set -euo pipefail
cd "$(dirname "$0")/.."
{
  echo "# Pet Care Guide (full)"
  echo
  grep -oE 'docs/[a-z-]+\.md' llms.txt | while read -r f; do
    echo "---"
    echo "source: $f"
    echo "---"
    echo
    cat "$f"
    echo
  done
} > llms-full.txt
echo "Wrote llms-full.txt"
