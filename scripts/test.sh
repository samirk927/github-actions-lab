#!/usr/bin/env bash
set -euo pipefail

# Always use the venv interpreter
VENV_PY=".venv/bin/python"

if [[ ! -x "$VENV_PY" ]]; then
  echo "Missing .venv. Create it with: /usr/local/opt/python@3.11/bin/python3.11 -m venv .venv"
  exit 1
fi

"$VENV_PY" -m pytest -q
