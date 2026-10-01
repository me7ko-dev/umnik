#!/bin/sh
# Събира index.html (пълна страница за браузър / GitHub Pages) от game.html
cd "$(dirname "$0")"
{
  printf '<!doctype html>\n<html lang="bg">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n'
  cat <<'BROJACH'
<!-- Метко Стор: анонимен брояч (само на сайта) — https://me7ko-dev.github.io/ -->
<script>if(location.hostname==='me7ko-dev.github.io'){const s=document.createElement('script');s.src='/brojach.js';s.dataset.app='umnik';document.head.appendChild(s)}</script>
BROJACH
  printf '</head>\n<body>\n'
  cat game.html
  printf '\n</body>\n</html>\n'
} > index.html
