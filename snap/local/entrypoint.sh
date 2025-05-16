#!/bin/bash

PORT="${PORT:-8080}"
HOST="${HOST:-0.0.0.0}"
exec uvicorn main:app --host "$HOST" --port "$PORT" --forwarded-allow-ips '*'
