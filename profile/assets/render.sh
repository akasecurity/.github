#!/usr/bin/env bash
# render.sh — self-contained banner HTML → 2× retina PNG via headless Chrome.
# Usage: ./render.sh <input.html> <output.png> [width] [height]
set -euo pipefail
IN="${1:?input html}"; OUT="${2:?output png}"; W="${3:-1280}"; H="${4:-400}"
CHROME=""
for c in \
  "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" \
  "/Applications/Chromium.app/Contents/MacOS/Chromium" \
  "/Applications/Brave Browser.app/Contents/MacOS/Brave Browser" \
  "/Applications/Microsoft Edge.app/Contents/MacOS/Microsoft Edge"; do
  [[ -x "$c" ]] && { CHROME="$c"; break; }
done
[[ -n "$CHROME" ]] || { echo "Error: no Chromium-family browser found"; exit 1; }
ABS="$(cd "$(dirname "$IN")" && pwd)/$(basename "$IN")"
"$CHROME" --headless=new --disable-gpu --no-sandbox --hide-scrollbars \
  --force-device-scale-factor=2 \
  --window-size="${W},${H}" \
  --virtual-time-budget=15000 \
  --run-all-compositor-stages-before-draw \
  --screenshot="$OUT" \
  "file://${ABS}" 2>/dev/null
echo "✓ $OUT ($(sips -g pixelWidth -g pixelHeight "$OUT" 2>/dev/null | awk '/pixel/{print $2}' | paste -sd× -))"
