# Instruções do projeto para Codex

Este repositório distribui workflows e skills exclusivamente para o Codex.

## Estrutura Codex

- Skills repo-locais ficam em `.codex/skills/<nome>/SKILL.md`.
- Instruções do projeto ficam neste `AGENTS.md`; instruções mais específicas podem existir em subdiretórios.
- O modelo de instruções globais é `templates/AGENTS.global.md` e pode ser adaptado para `~/.codex/AGENTS.md`.
- `context/` é opcional e deve conter somente conhecimento duradouro sob demanda.
- `docs/adr/` registra decisões arquiteturais; não duplique instruções operacionais ali.

## Regras de alteração

- Preserve alterações existentes e não sobrescreva `AGENTS.md` ou `~/.codex/AGENTS.md` automaticamente.
- Mantenha skills pequenas, com frontmatter `name` e `description` claros e instruções progressivamente carregáveis.
- Não crie configurações próprias de orquestração ou arquivos `explorer.toml`/`reviewer.toml`.
- Diferencie fatos observados, requisitos definidos, inferências, recomendações e pendências.
- Valide alterações documentais com `git diff --check` e verificações estruturais apropriadas.

## Convenção de commits

- Use Conventional Commits no formato `tipo: descrição` ou `tipo(escopo): descrição`.
- Prefira tipos como `feat`, `fix`, `docs`, `refactor`, `test`, `chore` e `ci`.
- Escreva a descrição no imperativo, de forma curta e específica; não use ponto final.
- Separe mudanças de naturezas diferentes em commits distintos quando isso for possível.

## Compatibilidade histórica

O diretório `legacy/` contém o desenho SDD/Gemini anterior deste repositório. Ele não faz parte da distribuição nem da configuração da fundação Codex.
