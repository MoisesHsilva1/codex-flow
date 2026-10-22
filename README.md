# Codex Workflow Kit

Fundação simples para workflows de desenvolvimento no Codex.

## Estrutura

```text
.
├── AGENTS.md                 # regras deste repositório para o Codex
├── .codex/skills/            # skills repo-locais descobertas pelo Codex
│   ├── basic-workflow/
│   ├── codebase-exploration/
│   ├── systematic-debugging/
│   └── code-review/
├── templates/                # modelos que podem ser copiados/adaptados
│   ├── AGENTS.global.md
│   └── AGENTS.project.md
├── docs/                     # documentação de uso e decisões
│   ├── adr/
│   ├── installation.md
│   ├── validation.md
│   ├── guide-basic.md
│   ├── codex-essentials.md
│   └── mcp-recommendations.md
└── legacy/                   # material SDD/Gemini anterior, fora do MVP Codex
```

## Skills

- `basic-workflow`: Explore → Plan → Execute → Review/Test → Conclude.
- `codebase-exploration`: investigação localizada e baseada em evidências.
- `systematic-debugging`: reprodução, hipótese, correção e regressão.
- `code-review`: revisão por severidade, contratos e validação.
- `test-strategy`: escolha de testes, regressão e cobertura útil.
- `verification-before-completion`: evidência antes de declarar conclusão.
- `security-audit`: auditoria read-only de segurança.
- `dependency-audit`: avaliação de dependências e lockfiles.
- `git-worktree`: isolamento seguro de trabalho paralelo.
- `grill-me`: entrevista manual para tensionar planos e designs.

Cada skill possui seu próprio `SKILL.md`, com `name`, `description`, gatilho, limites, procedimento e saída esperada. A delegação de exploração ou revisão é condicional; não há orquestrador próprio nem arquivos `explorer.toml`/`reviewer.toml`.

## Instalação

Para uso por projeto, mantenha `.codex/skills/` no repositório e `AGENTS.md` na raiz. Para uso global, adapte `templates/AGENTS.global.md` para `~/.codex/AGENTS.md` sem sobrescrever um arquivo existente.

O script `scripts/install-codex.sh` instala as skills disponíveis no `~/.codex/skills/` sem substituir skills já existentes. Ele não cria nem altera o `AGENTS.md` global.

Consulte [docs/installation.md](docs/installation.md) e [docs/validation.md](docs/validation.md).

Para quem está começando, leia o [guia básico de IA para desenvolvimento](docs/guide-basic.md).

A trilha [Codex Essentials & Agentic Development](docs/codex-essentials.md) explica fundamentos, contexto, desenvolvimento agentic, multiagente e operação profissional.

Para conectar o Codex a serviços de desenvolvimento, consulte [MCPs recomendados](docs/mcp-recommendations.md). A curadoria cobre GitHub, Context7, Figma, Playwright e OpenAI Docs, sempre com permissões mínimas.

Modelos prontos por stack ficam em [`templates/agents/`](templates/agents/README.md), incluindo React/Vite, Next.js, Node.js, FastAPI, Spring Boot, Go, Rust e monorepos TypeScript.

## Escopo

O MVP fornece instruções e templates para o Codex. Não cria contexto automaticamente, não altera configurações globais e não obriga `context/`, ADRs ou delegação. Material duradouro deve ser criado somente quando houver necessidade real.
