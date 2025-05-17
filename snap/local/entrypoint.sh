#!/bin/bash
# Set env vars from snap config before running API server
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
    # Convert dashes to underscores and uppercase for env var name
    export $(echo $VAR | tr '[:lower:]' '[:upper:]' | tr '-' '_')="$VALUE"
  fi
done

PORT="${PORT:-8080}"
HOST="${HOST:-0.0.0.0}"
exec uvicorn main:app --host "$HOST" --port "$PORT" --forwarded-allow-ips '*'
