#!/usr/bin/env bash
set -euo pipefail

source_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
codex_skills_dir="${CODEX_HOME:-$HOME/.codex}/skills"

mkdir -p "$codex_skills_dir"

for skill_dir in "$source_dir"/.codex/skills/*; do
  skill_name="$(basename "$skill_dir")"
  target="$codex_skills_dir/$skill_name"
  if [[ -e "$target" ]]; then
    printf 'Pulando %s: já existe em %s\n' "$skill_name" "$target"
    continue
  fi
  cp -R "$skill_dir" "$target"
  printf 'Instalada %s em %s\n' "$skill_name" "$target"
done

printf '\nSkills instaladas sem sobrescrever as existentes.\n'
printf 'O AGENTS.md global não foi criado nem alterado.\n'
printf 'Para regras globais, adapte templates/AGENTS.global.md manualmente.\n'
