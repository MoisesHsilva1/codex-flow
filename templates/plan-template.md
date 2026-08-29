# Plano de Implementação: [FUNCIONALIDADE]

**Branch**: `[###-nome-da-funcionalidade]` | **Data**: [DATA] | **Spec**: [link para spec.md]

**Entrada**: Especificação da funcionalidade em `/specs/[###-nome-da-funcionalidade]/spec.md`

**Nota**: Este modelo é preenchido pelo comando `/speckit.plan`; sua estrutura orienta a arquitetura técnica da implementação.

## Resumo

[Extrair da especificação: requisito primário + abordagem técnica derivada da pesquisa (research)]

## Contexto Técnico

<!--
  AÇÃO NECESSÁRIA: Substitua o conteúdo desta seção pelos detalhes técnicos
  reais do projeto.
-->

**Linguagem/Versão**: [ex.: TypeScript 5.4, Python 3.12, Go 1.22 ou PRECISA DE ESCLARECIMENTO]

**Dependências Principais**: [ex.: Next.js, FastAPI, Prisma, Tailwind ou PRECISA DE ESCLARECIMENTO]

**Armazenamento**: [se aplicável, ex.: PostgreSQL, Redis, SQLite, Arquivos ou N/A]

**Framework de Testes**: [ex.: Vitest, pytest, Jest ou PRECISA DE ESCLARECIMENTO]

**Plataforma-Alvo**: [ex.: Node.js / Linux Server, Navegadores Modernos, AWS Lambda ou PRECISA DE ESCLARECIMENTO]

**Tipo de Projeto**: [ex.: biblioteca / CLI / serviço web / aplicação web / app móvel ou PRECISA DE ESCLARECIMENTO]

**Metas de Desempenho**: [específico do domínio, ex.: <100ms p95, 60 fps, tempo de resposta instantâneo ou PRECISA DE ESCLARECIMENTO]

**Restrições Técnicas**: [específico do domínio, ex.: execução serverless, sem dependências nativas C++, suporte offline ou PRECISA DE ESCLARECIMENTO]

**Escala e Escopo**: [específico do domínio, ex.: 10k usuários diários, 100 requisições/segundo ou PRECISA DE ESCLARECIMENTO]

## Verificação da Constituição (Constitution Check)

*PORTÃO DE QUALIDADE (GATE): Deve passar antes da pesquisa da Fase 0. Reavaliar após o design da Fase 1.*

[Portões e validações determinadas com base no arquivo de constituição]

## Estrutura do Projeto

### Documentação (desta funcionalidade)

```text
specs/[###-funcionalidade]/
├── plan.md              # Este arquivo (saída do comando /speckit.plan)
├── research.md          # Saída da Fase 0 (decisões técnicas e pesquisa)
├── data-model.md        # Saída da Fase 1 (modelo de dados e entidades)
├── quickstart.md        # Saída da Fase 1 (guia de teste e validação rápida)
├── contracts/           # Saída da Fase 1 (esquemas de API / interfaces)
└── tasks.md             # Saída da Fase 2 (criado pelo comando /speckit.tasks)
```

### Código-Fonte (raiz do repositório)
<!--
  AÇÃO NECESSÁRIA: Substitua a árvore de exemplo abaixo pela estrutura
  concreta desta funcionalidade.
-->

```text
# [REMOVER SE NÃO USADO] Opção 1: Projeto Único (PADRÃO)
src/
├── models/
├── services/
├── cli/
└── lib/

tests/
├── contract/
├── integration/
└── unit/

# [REMOVER SE NÃO USADO] Opção 2: Aplicação Web (quando "frontend" + "backend" forem detectados)
backend/
├── src/
│   ├── models/
│   ├── services/
│   └── api/
└── tests/

frontend/
├── src/
│   ├── components/
│   ├── pages/
│   └── services/
└── tests/
```

**Decisão de Estrutura**: [Documente a estrutura selecionada e referencie os diretórios reais]

## Rastreamento de Complexidade

> **Preencher APENAS se a Verificação da Constituição apontar exceções que precisem de justificativa**

| Exceção / Violação | Por que é necessária? | Alternativa mais simples rejeitada porque... |
|-------------------|-----------------------|----------------------------------------------|
| [ex.: 4º microsserviço] | [necessidade atual] | [por que 3 serviços são insuficientes] |
| [ex.: Padrão Repository complexo] | [problema específico] | [por que acesso direto ao ORM é insuficiente] |
