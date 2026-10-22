# Catálogo de skills para desenvolvedores

Este catálogo registra a curadoria do Codex Flow. Ele não tenta importar centenas de skills: seleciona procedimentos que aparecem repetidamente em coleções públicas de engenharia e que têm utilidade transversal em repositórios.

## Núcleo atual

| Skill | Utilidade principal | Quando usar |
|---|---|---|
| `basic-workflow` | Coordena o ciclo completo | Toda mudança com investigação e validação |
| `codebase-exploration` | Mapeia contexto e fluxo | Antes de editar uma área desconhecida |
| `systematic-debugging` | Encontra causa raiz | Bugs e regressões |
| `code-review` | Revisa riscos concretos | Antes de integrar uma mudança |
| `test-strategy` | Escolhe testes que provam comportamento | Features, bugs e lacunas de cobertura |
| `verification-before-completion` | Evita conclusões sem evidência | Antes de reportar qualquer entrega |
| `security-audit` | Busca vulnerabilidades e secrets | Auditorias ou mudanças sensíveis |
| `dependency-audit` | Avalia pacotes e lockfiles | Adições, upgrades e CVEs |
| `git-worktree` | Isola trabalho paralelo | Tarefas independentes em paralelo |
| `grill-me` | Pressiona planos e designs antes do código | Quando o usuário pedir uma entrevista de decisão |

## Como a seleção foi feita

Foram consultados o repositório `alirezarezvani/claude-skills`, o repositório `obra/superpowers`, o exemplo `review-agent` do próprio `openai/codex` e uma coleção focada em workflows diários de desenvolvimento. Os temas recorrentes foram revisão, testes, debugging, planejamento, verificação, segurança, dependências e isolamento Git.

Isso é uma curadoria de utilidade, não um ranking objetivo de popularidade. Antes de adicionar uma nova skill, deve existir um gatilho independente, uma saída clara e evidência de que ela não duplica uma skill existente.

## Fontes

- [alirezarezvani/claude-skills](https://github.com/alirezarezvani/claude-skills) — catálogo amplo com domínios de engenharia, testes, segurança, dependências e worktrees.
- [obra/superpowers](https://github.com/obra/superpowers) — TDD, debugging sistemático, planejamento e verificação.
- [openai/codex — review-agent](https://github.com/openai/codex/blob/main/codex-rs/skills/src/assets/samples/review-agent/SKILL.md) — referência Codex para review read-only e findings acionáveis.
- [Chrike/coding-agent-skills](https://github.com/Chrike/coding-agent-skills) — workflows diários de debugging, testes, segurança, review e handoff.
- [mattpocock/skills — grill-me](https://github.com/mattpocock/skills/tree/main/skills/productivity/grill-me) — skill manual para entrevistar e tensionar um plano ou design.
