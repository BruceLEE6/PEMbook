#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
BOOK_DIR="$ROOT_DIR/jupyter-book"
HTML_DIR="$BOOK_DIR/_build/html"

cd "$ROOT_DIR"

# Prefer Python 3.12 environment because Jupyter Book dependencies may fail on 3.13.
if [[ -f ".venv312/bin/activate" ]]; then
  source .venv312/bin/activate
elif [[ -f ".venv/bin/activate" ]]; then
  source .venv/bin/activate
fi

echo "Building Jupyter Book..."
jupyter-book build jupyter-book

echo "Starting local server at http://127.0.0.1:8000"
cd "$HTML_DIR"
python -m http.server 8000
