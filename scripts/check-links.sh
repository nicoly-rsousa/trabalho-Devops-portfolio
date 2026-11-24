#!/usr/bin/env bash
set -u
erro=0

urls=$(grep -ohE '(href|src)="[^"]*"' index.html | sed -E 's/^(href|src)="//; s/"$//')

for url in $urls; do
  case "$url" in
    ""|"#"*|mailto:*|tel:*|javascript:*) continue ;;
    http://*|https://*)
      code=$(curl -s -o /dev/null -L -A "Mozilla/5.0" --max-time 20 -w "%{http_code}" "$url")
      # 403, 429 e 999: redes sociais bloqueiam robos, mas o link existe
      if [ "$code" = "000" ] || { [ "$code" -ge 400 ] && [ "$code" != "403" ] && [ "$code" != "429" ] && [ "$code" != "999" ]; }; then
        echo "::error::URL invalida ($code): $url"
        erro=1
      else
        echo "OK ($code): $url"
      fi
      ;;
    *)
      arquivo="${url%%#*}"
      if [ ! -f "$arquivo" ]; then
        echo "::error::Caminho inexistente: $url"
        erro=1
      else
        echo "OK: $url"
      fi
      ;;
  esac
done

exit $erro