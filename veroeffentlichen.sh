#!/bin/bash
# Zeigt die Schritte für GitHub Pages (Konto jguethlein).
# Legt kein Repo an und pusht nicht. Aufruf: bash veroeffentlichen.sh
set -euo pipefail
cd "$(dirname "$0")"

if grep -n '{{' index.html impressum.html; then echo "Noch Platzhalter in den Seiten – erst ersetzen."; exit 1; fi

GH=jguethlein
URL="https://$GH.github.io/kompakt-datenschutz/"
cat <<SCHRITTE

Bitte zuerst ansehen: open index.html impressum.html

Danach:
  1. git add -A && git commit -m "Seite fertig"
  2. github.com → New repository → Name: kompakt-datenschutz → Public → OHNE README → Create
  3. git remote add origin https://github.com/$GH/kompakt-datenschutz.git
     git push -u origin main
  4. Repo → Settings → Pages → Source: Deploy from a branch → main, / (root) → Save
  5. Nach 1–2 Minuten öffnen: $URL  und  ${URL}impressum.html
  6. In App Store Connect als Datenschutz-URL eintragen: $URL
SCHRITTE
