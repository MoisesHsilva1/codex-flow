# IA Workflow

Workflow de desenvolvimento orientado a especificações (Specification-Driven Development) para projetos assistidos por Inteligência Artificial.

O IA Workflow organiza o desenvolvimento de software em etapas explícitas, mantendo contexto, especificações, decisões, planejamento e tarefas separados.

O objetivo é reduzir ambiguidades, melhorar a rastreabilidade e manter as decisões relevantes sob controle humano.

---

## Visão Geral

O workflow é baseado em um princípio simples:

> A IA analisa e executa. O humano decide.

Em vez de iniciar diretamente pela implementação, o projeto passa por uma sequência estruturada:

```text
Contexto do Projeto
        |
        v
Specification
        |
        v
Esclarecimentos
        |
        v
Plano
        |
        v
Aprovação Humana
        |
        v
Tasks
        |
        v
Aprovação Humana
        |
        v
Implementação
        |
        v
Validação
```

O workflow é inspirado nos conceitos de Specification-Driven Development e no Spec Kit, mas possui estrutura, regras e skills próprias.

---

## Objetivos

O IA Workflow foi projetado para:

* estruturar o desenvolvimento assistido por IA;
* reduzir ambiguidades antes da implementação;
* separar requisitos de decisões técnicas;
* manter contexto permanente do projeto;
* tornar decisões importantes explícitas;
* permitir aprovação humana em pontos críticos;
* manter rastreabilidade entre specification, plano, tasks e código;
* reduzir alterações fora do escopo;
* facilitar a colaboração entre diferentes agentes de IA.

---

## Princípios

### 1. O humano decide

A IA pode analisar, recomendar e executar.

Decisões relevantes devem ser tomadas pelo usuário.

Quando existir uma dúvida envolvendo arquitetura, negócio, escopo, segurança, dados ou comportamento do sistema, a IA deve interromper o fluxo e solicitar uma decisão.

### 2. Não inventar contexto

A IA não deve assumir informações que não estejam definidas ou sustentadas pelo projeto.

Informações devem ser tratadas como:

```text
Observado
Definido
Inferido
Recomendado
Pendente
```

### 3. Specification antes da implementação

Nenhuma feature deve começar diretamente pelo código.

A specification é a fonte inicial de verdade sobre o comportamento esperado da funcionalidade.

### 4. Aprovação explícita

Planos e tasks precisam ser aprovados antes da implementação.

Silêncio não representa aprovação.

### 5. Rastreabilidade

Toda implementação deve poder ser relacionada a uma specification e a um plano aprovado.

---

# Arquitetura do Workflow

O projeto possui três camadas principais:

```text
GEMINI.md
    |
    | Regras gerais e governança
    |
    +-------------------+
                        |
                        v
                     skills/
                        |
              +---------+---------+
              |                   |
              v                   v
         SDD Config          SDD Start
              |                   |
              v                   v
            .ai/                specs/
```

## GEMINI.md

Define as regras gerais do projeto.

Responsável por:

* idioma;
* princípios;
* tomada de decisão;
* regras de segurança;
* governança;
* comportamento geral da IA;
* princípios de desenvolvimento.

O `GEMINI.md` não deve conter detalhes excessivos de uma skill específica.

---

## Skills

As skills implementam os fluxos específicos do workflow.

Estrutura:

```text
skills/
├── sdd-config/
│   └── SKILL.md
│
├── sdd-start/
│   └── SKILL.md
│
└── ...
```

Cada skill possui uma responsabilidade específica.

Atualmente, o workflow possui duas etapas principais:

* `SDD Config`
* `SDD Start`

Novas etapas podem ser adicionadas posteriormente.

---

# SDD Config

A `SDD Config` prepara o contexto permanente do projeto.

Seu objetivo é permitir que a IA compreenda o sistema antes de trabalhar em funcionalidades.

A skill analisa o projeto existente e gera ou atualiza:

```text
.ai/
├── context.md
├── architecture.md
└── design.md
```

## context.md

Representa o contexto geral do projeto.

Pode conter:

* objetivo;
* problema;
* domínio;
* usuários;
* regras de negócio;
* escopo;
* requisitos;
* restrições;
* integrações;
* estado atual.

## architecture.md

Representa a arquitetura do sistema.

Pode conter:

* stack;
* componentes;
* módulos;
* responsabilidades;
* comunicação;
* persistência;
* APIs;
* infraestrutura;
* integrações;
* segurança;
* observabilidade;
* decisões arquiteturais.

## design.md

Representa padrões e convenções de desenvolvimento.

Pode conter:

* organização do código;
* nomenclatura;
* padrões;
* validações;
* tratamento de erros;
* testes;
* logging;
* configuração;
* práticas de desenvolvimento.

A `SDD Config` não implementa funcionalidades.

---

# SDD Start

A `SDD Start` inicia o desenvolvimento de uma feature a partir de uma specification existente.

A feature deve possuir obrigatoriamente:

```text
specs/
└── <feature>/
    └── spec.md
```

Exemplo:

```text
specs/
└── authentication/
    └── spec.md
```

A specification é o ponto de entrada do workflow.

Se a `spec.md` não existir, a `SDD Start` deve interromper o processo.

A IA não deve criar uma specification automaticamente para substituir uma specification ausente.

---

## Fluxo do SDD Start

```text
/sdd-start <feature>
        |
        v
Localizar spec.md
        |
        v
Validar specification
        |
        v
Carregar contexto .ai/
        |
        v
Analisar projeto
        |
        v
Identificar ambiguidades
        |
        v
Decisões humanas
        |
        v
Gerar plan.md
        |
        v
Aprovação humana
        |
        v
Gerar tasks.md
        |
        v
Identificar dúvidas
        |
        v
Aprovação humana
        |
        v
READY FOR IMPLEMENTATION
```

---

# Estrutura das Features

Cada feature possui seus próprios artefatos.

```text
specs/
└── <feature>/
    ├── spec.md
    ├── plan.md
    └── tasks.md
```

Outros artefatos podem ser adicionados conforme a necessidade da feature.

Por exemplo:

```text
specs/
└── authentication/
    ├── spec.md
    ├── plan.md
    ├── tasks.md
    ├── research.md
    ├── data-model.md
    ├── quickstart.md
    ├── contracts/
    └── checklists/
```

A criação desses artefatos depende da necessidade real da feature.

O workflow não deve gerar arquivos apenas para preencher uma estrutura.

---

# Responsabilidade dos Artefatos

## spec.md

Define:

```text
O QUE deve ser construído
POR QUE deve ser construído
```

Deve representar principalmente:

* problema;
* objetivo;
* comportamento esperado;
* requisitos;
* regras de negócio;
* critérios de aceitação.

---

## plan.md

Define:

```text
COMO a solução será construída
```

Pode conter:

* arquitetura;
* componentes;
* fluxo de dados;
* persistência;
* APIs;
* integrações;
* alterações necessárias;
* estratégia de testes;
* decisões técnicas.

---

## tasks.md

Define:

```text
QUAIS passos serão executados
```

As tasks devem ser derivadas do plano aprovado e possuir escopo claro.

---

# Human Approval Gates

O workflow possui pontos obrigatórios de aprovação humana.

## Aprovação do Plano

Depois de gerar:

```text
plan.md
```

a IA deve interromper o workflow e solicitar aprovação.

O usuário pode:

* aprovar;
* solicitar alterações;
* adicionar informações;
* remover informações;
* rejeitar.

Somente após a aprovação o workflow poderá gerar as tasks finais.

---

## Aprovação das Tasks

Depois de gerar:

```text
tasks.md
```

a IA deve validar as tarefas e identificar eventuais dúvidas.

Depois disso, deve solicitar aprovação humana.

A implementação somente poderá começar após a aprovação.

---

# Controle de Escopo

Durante o desenvolvimento, podem surgir necessidades não previstas na specification ou no plano.

Nesse caso, a IA não deve simplesmente incorporar a mudança.

Deve identificar:

```text
MUDANÇA DE ESCOPO
```

e apresentar:

* contexto;
* motivo;
* impacto;
* alternativas;
* recomendação, quando apropriado.

A mudança somente deve ser implementada após decisão humana.

---

# Rastreabilidade

O workflow busca manter a seguinte relação:

```text
spec.md
   |
   v
plan.md
   |
   v
tasks.md
   |
   v
código
```

Isso permite responder:

```text
Por que essa alteração existe?
        |
        v
Qual task originou a alteração?
        |
        v
Qual parte do plano definiu a task?
        |
        v
Qual requisito da specification originou o plano?
```

---

# Estrutura do Projeto

Uma estrutura típica é:

```text
project/
├── .ai/
│   ├── context.md
│   ├── architecture.md
│   └── design.md
│
├── .gemini/
│   └── ...
│
├── skills/
│   ├── sdd-config/
│   │   └── SKILL.md
│   │
│   └── sdd-start/
│       └── SKILL.md
│
├── specs/
│   ├── feature-a/
│   │   ├── spec.md
│   │   ├── plan.md
│   │   └── tasks.md
│   │
│   └── feature-b/
│       └── spec.md
│
├── src/
├── tests/
├── GEMINI.md
└── README.md
```

---

# Templates

Templates utilizados pelo workflow devem ficar separados das implementações das skills.

Estrutura sugerida:

```text
templates/
├── context-template.md
├── architecture-template.md
├── design-template.md
├── spec-template.md
├── plan-template.md
└── tasks-template.md
```

As skills podem utilizar esses templates para manter consistência entre projetos e features.

---

# Uso

## 1. Configurar o projeto

Execute a `SDD Config` no projeto.

Ela deve analisar o estado atual do repositório e preparar:

```text
.ai/
├── context.md
├── architecture.md
└── design.md
```

---

## 2. Criar a Specification

Crie uma feature em:

```text
specs/<feature>/spec.md
```

Exemplo:

```text
specs/user-authentication/spec.md
```

A specification deve descrever o problema, objetivo, comportamento esperado e critérios de aceitação.

---

## 3. Iniciar a Feature

Execute:

```text
/sdd-start user-authentication
```

A `SDD Start` localizará:

```text
specs/user-authentication/spec.md
```

e iniciará o workflow.

---

## 4. Revisar o Plano

A IA analisará:

```text
spec.md
.ai/
código existente
```

e criará:

```text
plan.md
```

O plano deve ser revisado e aprovado antes da próxima etapa.

---

## 5. Revisar as Tasks

Depois da aprovação do plano, a IA criará:

```text
tasks.md
```

As tasks devem ser revisadas e aprovadas antes da implementação.

---

## 6. Implementar

Somente após todas as decisões necessárias e aprovações:

```text
specification
        +
plan
        +
tasks
        |
        v
implementation
```

A implementação deve seguir as tasks aprovadas.

---

# Estado de uma Feature

Uma feature está pronta para implementação somente quando:

```text
Specification válida
        |
        v
Ambiguidades resolvidas
        |
        v
Plano gerado
        |
        v
Plano aprovado
        |
        v
Tasks geradas
        |
        v
Tasks aprovadas
        |
        v
READY FOR IMPLEMENTATION
```

---

# Segurança

Nunca armazenar informações sensíveis nos artefatos do workflow.

Não registrar:

* passwords;
* API keys;
* access tokens;
* secrets;
* credenciais;
* valores sensíveis de `.env`;
* dados privados desnecessários.

Integrações que exigem credenciais devem documentar apenas como elas devem ser configuradas.

---

# Relação com o Spec Kit

O IA Workflow utiliza conceitos do Spec Kit como referência para o desenvolvimento orientado a especificações.

Entretanto, este projeto não busca reproduzir integralmente o workflow original.

A arquitetura deste projeto é independente e possui suas próprias:

* skills;
* regras;
* templates;
* convenções;
* etapas;
* pontos de aprovação.

O objetivo é adaptar os conceitos de SDD ao fluxo de trabalho utilizado neste projeto, com foco em interação em Português Brasileiro e controle humano das decisões.

---

# Roadmap

O workflow está sendo desenvolvido de forma incremental.

Estado atual:

```text
[x] Estrutura base do projeto
[x] GEMINI.md
[x] SDD Config
[x] SDD Start
[x] Contexto permanente (.ai/)
[x] Estrutura de specifications
[ ] Validação automatizada
[ ] Integração com CI
[ ] Skills adicionais
[ ] Fluxo de implementação automatizada
[ ] Validação de consistência entre artefatos
```

Novas etapas serão adicionadas conforme o workflow evoluir.

---

# Filosofia

O objetivo do IA Workflow não é fazer a IA escrever mais código.

O objetivo é fazer a IA escrever o código certo, dentro de um processo previsível e rastreável.

```text
Menos improvisação.
Mais contexto.
Mais decisões explícitas.
Mais rastreabilidade.
Menos retrabalho.
```
