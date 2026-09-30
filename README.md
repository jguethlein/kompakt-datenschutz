# Kompakt Rechnung – Datenschutzseite

Statische Seite (`index.html`), Entwurf, kein Rechtsrat.

## Vor der Veröffentlichung
1. In `index.html` `{{PROTON_EMAIL}}` und `{{ADRESSE}}` ersetzen (`grep -n '{{' index.html`).
2. Ein Impressum mit ladungsfähiger Anschrift ist bei öffentlicher Seite Pflicht (§ 5 DDG); Entwurf: `Gedächtnis/referenz/tennis/rechtstexte/impressum.md`.

## Auf GitHub Pages
1. Auf github.com neues **öffentliches** Repo anlegen, z. B. `kompakt-datenschutz`.
2. `git remote add origin git@github.com:<name>/kompakt-datenschutz.git && git push -u origin main`
3. Repo → Settings → Pages → Source: Branch `main`, Ordner `/ (root)` → Save.
4. URL: `https://<name>.github.io/kompakt-datenschutz/` – diese in App Store Connect als Datenschutz-URL eintragen.
