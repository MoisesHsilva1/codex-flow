# Guia básico de IA para desenvolvimento

Este guia explica os conceitos usados no Codex Flow para quem está começando a trabalhar com agentes de IA em repositórios.

## 1. O que é um agente de IA?

Um agente é um modelo de IA que recebe um objetivo, observa um ambiente, decide próximos passos e pode usar ferramentas para executar o trabalho. Em desenvolvimento, o ambiente normalmente é o repositório: arquivos, terminal, testes, Git e documentação.

Um chat comum geralmente responde com texto. Um agente de código pode, quando autorizado, ler arquivos, editar código, executar comandos e retornar as evidências do que fez.

O agente não conhece automaticamente as regras do seu projeto. Ele precisa descobrir o contexto pelos arquivos, instruções e ferramentas disponíveis.

## 2. O que é o Codex?

Codex é o agente de desenvolvimento usado por este kit. Ele trabalha dentro do contexto do projeto e pode seguir instruções persistentes, carregar skills e validar mudanças com comandos do repositório.

Pense assim:

```text
Você define o objetivo
        ↓
Codex explora o projeto
        ↓
Codex propõe e executa mudanças
        ↓
Codex testa e mostra evidências
        ↓
Você decide o que será aceito
```

Codex não substitui a decisão humana sobre produto, arquitetura, segurança ou escopo.

## 3. O que é `AGENTS.md`?

`AGENTS.md` é um arquivo de instruções duradouras para o agente dentro de um projeto. Ele funciona como um guia de contribuição adaptado para o Codex.

Um bom arquivo explica:

- o que o projeto faz;
- onde ficam os principais arquivos;
- quais comandos existem;
- como testar, fazer lint e build;
- convenções de código;
- restrições de segurança;
- o que não deve ser alterado;
- documentação adicional que deve ser consultada.

Exemplo:

```markdown
# Repository Guidelines

Este projeto é uma API FastAPI.

## Comandos

- `uv run pytest` — executa os testes.
- `uv run ruff check .` — executa o lint.

## Regras

- Use Pydantic nos contratos HTTP.
- Não registre tokens ou valores de `.env`.
```

Não copie um modelo sem adaptar os comandos e diretórios. Um comando fictício em `AGENTS.md` pode fazer o agente perder tempo ou validar a coisa errada.

## 4. Onde o Codex encontra as instruções?

As instruções podem ser globais ou específicas do projeto. As instruções mais próximas do diretório de trabalho podem complementar ou especializar as mais gerais.

```text
~/.codex/AGENTS.md          regras pessoais e universais
projeto/AGENTS.md           regras do projeto inteiro
projeto/src/AGENTS.md       regras específicas de src
projeto/src/api/AGENTS.md   regras específicas da API
```

Use o arquivo global com moderação. Comandos, arquitetura e convenções de um projeto devem ficar no `AGENTS.md` desse projeto.

## 5. O que é uma skill?

Uma skill é um procedimento reutilizável que ensina o Codex a lidar com uma tarefa recorrente. Ela possui um `SKILL.md` com nome, descrição, gatilho e instruções.

Exemplos:

- `codebase-exploration`: investigar uma área antes de editar;
- `systematic-debugging`: depurar por reprodução e causa raiz;
- `test-strategy`: escolher testes úteis;
- `security-audit`: auditar segurança sem alterar o código;
- `grill-me`: questionar um plano antes da implementação.

O `AGENTS.md` descreve o projeto. A skill descreve como executar um tipo de trabalho.

## 6. O que é um prompt?

Prompt é o pedido que você faz ao Codex. Um pedido bom informa resultado, escopo e restrições.

Pedido vago:

> Melhore a autenticação.

Pedido melhor:

> Investigue o fluxo de login em `src/auth`, identifique por que tokens expirados ainda são aceitos, proponha um plano curto e só implemente depois de confirmar o impacto nos testes existentes.

Não é necessário escrever uma solução inteira no prompt. Diga o objetivo e as restrições; permita que o Codex explore o repositório antes de decidir detalhes.

## 7. O que são ferramentas?

Ferramentas são capacidades que o agente pode usar, como leitura de arquivos, busca, terminal, Git ou navegador. Uma skill pode orientar quando usar uma ferramenta, mas não deve presumir que toda ferramenta está disponível.

O agente deve preferir ferramentas de leitura para entender o projeto e executar somente comandos compatíveis com o ambiente. A autorização do usuário para uma tarefa não autoriza ações destrutivas ou externas que não fazem parte dela.

## 8. Como começar um trabalho?

Use este pedido inicial:

```text
Explore o repositório e leia as instruções aplicáveis. Entenda a estrutura, os comandos e os testes relacionados a esta tarefa. Antes de editar, me mostre um plano curto com arquivos afetados, riscos e validação. Se houver uma decisão de arquitetura, segurança, dados ou escopo, pare e me pergunte.
```

Para uma mudança pequena, o Codex pode seguir o ciclo:

```text
Explore → Plan → Execute → Review/Test → Conclude
```

## Glossário rápido

| Termo | Significado |
|---|---|
| Agente | IA que observa, decide e usa ferramentas para alcançar um objetivo. |
| Codex | Agente de desenvolvimento usado neste kit. |
| `AGENTS.md` | Instruções persistentes do projeto para o Codex. |
| Skill | Procedimento reutilizável para uma tarefa recorrente. |
| Prompt | Pedido feito ao agente. |
| Ferramenta | Capacidade de ler, editar, testar ou interagir com o ambiente. |
| Diff | Diferença entre o estado anterior e as alterações atuais. |
| Regressão | Comportamento que funcionava e deixou de funcionar após uma mudança. |
| Gate | Ponto em que o trabalho para até uma decisão ou aprovação. |
