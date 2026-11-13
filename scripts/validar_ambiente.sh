#!/usr/bin/env bash
set -euo pipefail

usage() {
  printf 'Uso: %s <IPv4-privado-do-laboratorio>\n' "$0" >&2
  exit 2
}

[[ $# -eq 1 ]] || usage
ip="$1"

# Validação estrita de quatro octetos decimais, sem zeros à esquerda.
if [[ ! "$ip" =~ ^(0|[1-9][0-9]{0,2})\.(0|[1-9][0-9]{0,2})\.(0|[1-9][0-9]{0,2})\.(0|[1-9][0-9]{0,2})$ ]]; then
  printf 'Erro: IPv4 inválido.\n' >&2
  exit 2
fi
IFS='.' read -r a b c d <<< "$ip"
for octet in "$a" "$b" "$c" "$d"; do
  if (( octet > 255 )); then
    printf 'Erro: octeto IPv4 fora do intervalo.\n' >&2
    exit 2
  fi
done

# RFC 1918: 10/8, 172.16/12, 192.168/16.
if ! (( a == 10 || (a == 172 && b >= 16 && b <= 31) || (a == 192 && b == 168) )); then
  printf 'Erro: use apenas endereço privado RFC 1918 do laboratório.\n' >&2
  exit 2
fi

printf 'Alvo informado: %s\n' "$ip"
printf 'Atenção: IP privado não garante isolamento. Confira a rede Host-Only.\n'
for tool in ip ping medusa; do
  if command -v "$tool" >/dev/null 2>&1; then
    printf '[OK] %s encontrado\n' "$tool"
  else
    printf '[AVISO] %s não encontrado\n' "$tool"
  fi
done
printf 'Verificação local concluída. Nenhuma autenticação foi tentada.\n'
