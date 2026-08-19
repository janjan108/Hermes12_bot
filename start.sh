#!/bin/bash
export PATH="/usr/local/bin:/root/.local/bin:$PATH"
export HERMES_HOME="/root/.hermes"

hermes config set model.base_url "$OPENAI_BASE_URL" 2>/dev/null || true
hermes config set model.api_key "$OPENAI_API_KEY" 2>/dev/null || true
hermes config set model.default "$HERMES_MODEL" 2>/dev/null || true

exec hermes gateway
