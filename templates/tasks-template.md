---
description: "Modelo de lista de tarefas para implementação da funcionalidade"
---

# Tarefas: [NOME DA FUNCIONALIDADE]

**Entrada**: Documentos de design de `/specs/[###-nome-da-funcionalidade]/`

**Pré-requisitos**: plan.md (obrigatório), spec.md (obrigatório para histórias de usuário), research.md, data-model.md, contracts/

**Testes**: Os exemplos abaixo incluem tarefas de teste. Testes são OPCIONAIS — inclua-os apenas se expressamente solicitados na especificação ou via TDD.

**Organização**: As tarefas são agrupadas por história de usuário para permitir a implementação e os testes independentes de cada história.

## Formato: `[ID] [P?] [US#] Descrição`

- **[P]**: Pode executar em paralelo (arquivos diferentes, sem dependências)
- **[US#]**: A qual história de usuário esta tarefa pertence (ex.: US1, US2, US3)
- Inclua caminhos de arquivos exatos nas descrições

## Convenções de Caminhos

- **Projeto único**: `src/`, `tests/` na raiz do repositório
- **Aplicação web**: `backend/src/`, `frontend/src/`
- **Mobile**: `api/src/`, `ios/src/` ou `android/src/`
- Os caminhos abaixo assumem projeto único — ajuste conforme o `plan.md`

<!--
  ============================================================================
  IMPORTANTE: As tarefas abaixo são EXEMPLOS apenas para ilustração.

  O comando /speckit.tasks DEVE substituir estes exemplos por tarefas reais baseadas em:
  - Histórias de usuário da spec.md (com prioridades P1, P2, P3...)
  - Requisitos técnicos do plan.md
  - Entidades do data-model.md
  - Endpoints e contratos da pasta contracts/

  As tarefas DEVEM ser organizadas por história de usuário para que cada uma possa ser:
  - Implementada de forma independente
  - Testada de forma independente
  - Entregue como um incremento de MVP

  NÃO mantenha estas tarefas de exemplo no tasks.md gerado.
  ============================================================================
-->

## Fase 1: Setup (Infraestrutura Compartilhada)

**Objetivo**: Inicialização do projeto e estrutura básica

- [ ] T001 Criar estrutura do projeto conforme o plano de implementação
- [ ] T002 Inicializar projeto [linguagem] com dependências do [framework]
- [ ] T003 [P] Configurar ferramentas de lint e formatação de código

---

## Fase 2: Fundacional (Pré-requisitos Bloqueantes)

**Objetivo**: Infraestrutura central que DEVE estar concluída antes que QUALQUER história de usuário possa ser iniciada

**⚠️ CRÍTICO**: Nenhuma história de usuário pode começar até que esta fase esteja completa

Exemplos de tarefas fundacionais (ajuste conforme seu projeto):

- [ ] T004 Configurar esquema do banco de dados e migrações
- [ ] T005 [P] Implementar estrutura de autenticação e autorização
- [ ] T006 [P] Configurar roteamento de API e middlewares básicos
- [ ] T007 Criar modelos e entidades base das quais todas as histórias dependem
- [ ] T008 Configurar infraestrutura de tratamento de erros e logs
- [ ] T009 Configurar gerenciamento de variáveis de ambiente

**Ponto de Verificação**: Fundação pronta — a implementação das histórias de usuário agora pode começar em paralelo.

---

## Fase 3: História de Usuário 1 - [Título] (Prioridade: P1) 🎯 MVP

**Objetivo**: [Breve descrição do que esta história entrega]

**Teste Independente**: [Como verificar que esta história funciona isoladamente]

### Testes para a História de Usuário 1 (OPCIONAL - apenas se testes foram solicitados) ⚠️

> **NOTA: Escreva estes testes PRIMEIRO e garanta que eles FALHEM antes de implementar**

- [ ] T010 [P] [US1] Teste de contrato para [endpoint] em tests/contract/test_[nome].py
- [ ] T011 [P] [US1] Teste de integração para [jornada do usuário] em tests/integration/test_[nome].py

### Implementação da História de Usuário 1

- [ ] T012 [P] [US1] Criar modelo [Entidade1] em src/models/[entidade1].py
- [ ] T013 [P] [US1] Criar modelo [Entidade2] em src/models/[entidade2].py
- [ ] T014 [US1] Implementar [Servico] em src/services/[servico].py (depende de T012, T013)
- [ ] T015 [US1] Implementar [endpoint/interface] em src/[local]/[arquivo].py
- [ ] T016 [US1] Adicionar validações e tratamento de erros
- [ ] T017 [US1] Adicionar logs para as operações da história 1

**Ponto de Verificação**: Neste ponto, a História de Usuário 1 deve estar 100% funcional e testável de forma independente.

---

## Fase 4: História de Usuário 2 - [Título] (Prioridade: P2)

**Objetivo**: [Breve descrição do que esta história entrega]

**Teste Independente**: [Como verificar que esta história funciona isoladamente]

### Testes para a História de Usuário 2 (OPCIONAL) ⚠️

- [ ] T018 [P] [US2] Teste de contrato para [endpoint] em tests/contract/test_[nome].py
- [ ] T019 [P] [US2] Teste de integração para [jornada] em tests/integration/test_[nome].py

### Implementação da História de Usuário 2

- [ ] T020 [P] [US2] Criar modelo [Entidade] em src/models/[entidade].py
- [ ] T021 [US2] Implementar [Servico] em src/services/[servico].py
- [ ] T022 [US2] Implementar [endpoint/interface] em src/[local]/[arquivo].py
- [ ] T023 [US2] Integrar com componentes da História de Usuário 1 (se necessário)

**Ponto de Verificação**: As Histórias 1 E 2 devem funcionar de forma independente.

---

## Fase 5: História de Usuário 3 - [Título] (Prioridade: P3)

**Objetivo**: [Breve descrição do que esta história entrega]

**Teste Independente**: [Como verificar que esta história funciona isoladamente]

### Testes para a História de Usuário 3 (OPCIONAL) ⚠️

- [ ] T024 [P] [US3] Teste de contrato para [endpoint] em tests/contract/test_[nome].py
- [ ] T025 [P] [US3] Teste de integração para [jornada] em tests/integration/test_[nome].py

### Implementação da História de Usuário 3

- [ ] T026 [P] [US3] Criar modelo [Entidade] em src/models/[entidade].py
- [ ] T027 [US3] Implementar [Servico] em src/services/[servico].py
- [ ] T028 [US3] Implementar [endpoint/interface] em src/[local]/[arquivo].py

**Ponto de Verificação**: Todas as histórias de usuário devem estar funcionais de forma independente.

---

## Fase N: Polimento e Aspectos Transversais

**Objetivo**: Melhorias que afetam múltiplas histórias de usuário

- [ ] TXXX [P] Atualizações de documentação em docs/
- [ ] TXXX Limpeza e refatoração de código
- [ ] TXXX Otimização de desempenho entre as histórias
- [ ] TXXX [P] Testes unitários adicionais em tests/unit/
- [ ] TXXX Reforço de segurança e sanitização de entradas
- [ ] TXXX Execução do guia de validação rápida (quickstart.md)

---

## Dependências e Ordem de Execução

### Dependências das Fases

- **Setup (Fase 1)**: Sem dependências — pode começar imediatamente
- **Fundacional (Fase 2)**: Depende da conclusão do Setup — BLOQUEIA todas as histórias
- **Histórias de Usuário (Fase 3+)**: Todas dependem da conclusão da Fase Fundacional
  - Podem prosseguir em paralelo (se houver desenvolvedores/agentes paralelos)
  - Ou sequencialmente na ordem de prioridade (P1 → P2 → P3)
- **Polimento (Fase Final)**: Depende da conclusão de todas as histórias desejadas

### Estratégia de Implementação

#### MVP Primeiro (Apenas História de Usuário 1)

1. Concluir Fase 1: Setup
2. Concluir Fase 2: Fundacional (CRÍTICO)
3. Concluir Fase 3: História de Usuário 1
4. **PARAR E VALIDAR**: Testar a História 1 de forma independente
5. Fazer deploy / demonstrar se estiver pronta (MVP entregue!)

#### Entrega Incremental

1. Concluir Setup + Fundacional → Fundação pronta
2. Adicionar História 1 → Testar independentemente → Entregar (MVP!)
3. Adicionar História 2 → Testar independentemente → Entregar
4. Adicionar História 3 → Testar independentemente → Entregar
5. Cada história adiciona valor sem quebrar as anteriores

---

## Observações

- Tarefas marcadas com `[P]` = arquivos diferentes, sem dependências mútuas
- Rótulo `[US#]` mapeia a tarefa para a história de usuário para rastreabilidade
- Cada história deve ser testável e demonstrável isoladamente
- Comite após cada tarefa concluída
- Evite: tarefas vagas, conflitos no mesmo arquivo, acoplamento desnecessário entre histórias
