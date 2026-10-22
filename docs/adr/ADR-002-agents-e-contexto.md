# ADR-002: Estratégia de `AGENTS.md` e gerenciamento de contexto para Codex

- **Status:** Proposed — pending technical validation
- **Data:** 2026-10-22
- **Projeto:** Codex Workflow Kit
- **Plataforma:** OpenAI Codex
- **Relacionado:** ADR-001 — Codex Workflow Kit: Core Architecture

## Contexto

O kit distribui workflows, skills, integrações MCP e modelos reutilizáveis para desenvolvimento assistido por IA. O workflow principal segue:

```text
Explore → Plan → Execute → Review & Test → Conclude
```

O Codex precisa conhecer convenções, restrições e objetivos do projeto sem receber uma enciclopédia de boas práticas, histórico de conversas ou documentação duplicada.

## Problema

Um `AGENTS.md` monolítico é difícil de manter e pode conter instruções genéricas, comandos fictícios, procedimentos já cobertos por skills, informações temporárias ou regras contraditórias. Isso aumenta o contexto carregado e dificulta descobrir quais instruções realmente influenciaram o trabalho.

## Decisão proposta

Adotar três camadas de instrução:

1. **Global:** `~/.codex/AGENTS.md`, opcional, curto e universal.
2. **Projeto:** `AGENTS.md` na raiz do repositório, com propósito, estrutura, comandos, convenções e restrições reais.
3. **Contexto adicional:** documentos consultados sob demanda, somente quando carregarem conhecimento duradouro.

Instruções em subdiretórios só serão criadas quando houver regras específicas daquela área. As skills continuam responsáveis por procedimentos especializados; não devem duplicar integralmente as instruções persistentes.

### Princípio central

Persistir somente informações duradouras, relevantes e capazes de alterar positivamente o comportamento do agente.

## Global `AGENTS.md`

Pode conter preferências universais de desenvolvimento, segurança, comunicação, preservação de alterações e validação proporcional ao risco.

Não deve conter arquitetura de aplicações específicas, comandos particulares, tutoriais de frameworks, histórico de sessões, prompts longos ou procedimentos completos de debugging, review ou testes.

O modelo copiável está em [`templates/AGENTS.global.md`](../../templates/AGENTS.global.md). O kit nunca deve sobrescrever, mesclar ou remover automaticamente um arquivo global existente.

## Project `AGENTS.md`

Deve conter somente fatos e regras do repositório:

- propósito e escopo;
- estrutura e pontos de entrada;
- comandos reais de instalação, desenvolvimento e validação;
- convenções não óbvias;
- restrições de segurança, compatibilidade e escopo;
- links para contexto adicional ou ADRs relevantes.

O modelo copiável está em [`templates/AGENTS.project.md`](../../templates/AGENTS.project.md). Todos os campos de exemplo devem ser substituídos antes do uso.

## Contexto adicional

`context/` não é obrigatório e não é um sistema automático de memória. Deve ser criado apenas para documentação duradoura que seja consultada de fato. ADRs registram decisões arquiteturais e não substituem instruções operacionais.

## Consequências

### Positivas

- reduz duplicação entre projetos e skills;
- torna a origem das instruções mais clara;
- facilita instalação global sem modificar configurações existentes;
- mantém o contexto específico perto do código que ele descreve.

### Custos e riscos

- projetos precisam manter seus comandos e convenções atualizados;
- a precedência entre níveis precisa ser validada no runtime Codex escolhido;
- um template global mal adaptado ainda pode introduzir regras indesejadas.

## Validação pendente

Antes de considerar a decisão concluída, testar no runtime Codex alvo:

- descoberta e precedência entre `~/.codex/AGENTS.md`, raiz e subdiretórios;
- instalação por projeto, global e seletiva;
- comportamento com um `AGENTS.md` global já existente;
- cenários de bug, feature pequena e refatoração;
- contexto carregado e clareza da conclusão com e sem os templates.
