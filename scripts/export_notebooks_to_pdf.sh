#!/usr/bin/env bash
set -euo pipefail

# Temporary utility:
# Convert all experiment notebooks (experiment-*/exp-*.ipynb) into individual PDFs
# and place them in a separate output folder.
#
# Platform note:
# This script is intended for macOS environments (tested with macOS default shells).
#
# Default output folder: ./exports/pdfs
#
# Usage:
#   ./scripts/export_notebooks_to_pdf.sh
#   ./scripts/export_notebooks_to_pdf.sh ./exports/pdfs
#   ./scripts/export_notebooks_to_pdf.sh ./exports/pdfs --install-deps

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
OUT_DIR="${1:-$PROJECT_ROOT/exports/pdfs}"
INSTALL_DEPS="false"

if [[ "${2:-}" == "--install-deps" ]] || [[ "${1:-}" == "--install-deps" ]]; then
  INSTALL_DEPS="true"
  if [[ "${1:-}" == "--install-deps" ]]; then
    OUT_DIR="$PROJECT_ROOT/exports/pdfs"
  fi
fi

if [[ "$INSTALL_DEPS" == "true" ]]; then
  echo "[setup] Installing nbconvert webpdf dependencies..."
  python3 -m pip install --upgrade "nbconvert[webpdf]" jupyter nbformat >/dev/null
fi

if ! command -v jupyter >/dev/null 2>&1; then
  echo "[error] jupyter is not installed."
  echo "        Run: python3 -m pip install --upgrade \"nbconvert[webpdf]\" jupyter nbformat"
  exit 1
fi

mkdir -p "$OUT_DIR"

NOTEBOOKS=()
while IFS= read -r nb; do
  NOTEBOOKS+=("$nb")
done < <(find "$PROJECT_ROOT" -maxdepth 2 -type f -path "*/experiment-*/exp-*.ipynb" | sort)

if [[ ${#NOTEBOOKS[@]} -eq 0 ]]; then
  echo "[info] No notebooks found matching experiment-*/exp-*.ipynb"
  exit 0
fi

echo "[info] Found ${#NOTEBOOKS[@]} notebook(s). Output: $OUT_DIR"

for nb in "${NOTEBOOKS[@]}"; do
  base_name="$(basename "$nb" .ipynb)"
  parent_name="$(basename "$(dirname "$nb")")"
  out_name="${parent_name}-${base_name}"

  echo "[convert] $parent_name/$base_name.ipynb -> $out_name.pdf"

  # webpdf avoids local LaTeX dependency; Chromium can be auto-downloaded.
  # If this fails, fallback to classic pdf exporter.
  if ! jupyter nbconvert \
    --to webpdf \
    --allow-chromium-download \
    --output "$out_name" \
    --output-dir "$OUT_DIR" \
    "$nb" >/dev/null 2>&1; then

    echo "[warn] webpdf failed for $nb, trying LaTeX pdf exporter..."
    if ! jupyter nbconvert \
      --to pdf \
      --output "$out_name" \
      --output-dir "$OUT_DIR" \
      "$nb" >/dev/null 2>&1; then
      echo "[error] Could not convert: $nb"
    fi
  fi
done

echo "[done] PDF export complete. Check: $OUT_DIR"
