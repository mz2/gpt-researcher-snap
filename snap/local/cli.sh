#!/bin/bash
# Set env vars from snap config before running CLI
set -e
ENV_VARS=(
  openai-api-key
  openai-api-base
  ollama-base-url
  fast-llm
  smart-llm
  strategic-llm
  embedding
  ollama-embedding-model
)
for VAR in "${ENV_VARS[@]}"; do
  VALUE=$(snapctl get $VAR || true)
  if [ -n "$VALUE" ]; then
    export $(echo $VAR | tr '[:lower:]' '[:upper:]' | tr '-' '_')="$VALUE"
  fi
done

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
exec python $SCRIPT_DIR/cli.py "$@"

