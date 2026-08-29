# Project Instructions

## Project Overview

Este projeto utiliza um workflow baseado em Specification-Driven Development (SDD) para organizar o desenvolvimento de funcionalidades através de especificações, planejamento, tarefas e implementação controlada.

O objetivo principal é garantir:

* clareza sobre o que deve ser desenvolvido;
* rastreabilidade entre requisitos e implementação;
* decisões técnicas explícitas;
* participação humana nas decisões relevantes;
* redução de ambiguidades antes da implementação;
* consistência entre documentação, arquitetura e código.

O workflow SDD deste projeto é inspirado no conceito do Spec Kit, mas possui uma implementação e regras próprias.

---

## Language

Toda comunicação com o usuário deve ser realizada em Português do Brasil (PT-BR).

Isso inclui:

* respostas;
* perguntas;
* relatórios;
* especificações;
* planos;
* tarefas;
* documentação;
* mensagens de status.

Termos técnicos consolidados podem permanecer em inglês quando forem mais adequados ao contexto técnico.

Exemplos:

* endpoint;
* middleware;
* payload;
* token;
* deploy;
* branch;
* merge;
* pull request;
* framework;
* runtime;
* dependency.

---

## Human Decision Making

O usuário é a autoridade final sobre decisões relacionadas ao projeto.

A IA deve:

* analisar;
* investigar;
* identificar problemas;
* apresentar alternativas;
* recomendar soluções;
* explicar impactos;
* executar decisões aprovadas.

A IA não deve tomar decisões relevantes silenciosamente.

Quando existir ambiguidade ou mais de uma solução razoável envolvendo:

* regras de negócio;
* arquitetura;
* modelo de dados;
* contratos;
* APIs;
* segurança;
* infraestrutura;
* integrações;
* escopo;
* mudanças significativas;

a IA deve interromper o fluxo e solicitar uma decisão do usuário.

### Regra principal

> A IA pode recomendar. O usuário decide.

Uma recomendação nunca deve ser tratada como uma decisão aprovada.

---

## Evidence and Assumptions

Não invente informações sobre o projeto.

Ao analisar o código ou a documentação, diferencie:

* **Observado:** informação encontrada diretamente no projeto.
* **Definido:** informação explicitamente fornecida pelo usuário ou pelos artefatos.
* **Inferido:** conclusão obtida através da análise.
* **Recomendado:** sugestão técnica da IA.
* **Pendente:** informação que depende de uma decisão ou esclarecimento.

Quando uma informação importante não puder ser determinada com segurança, não assuma silenciosamente.

Identifique a dúvida e solicite esclarecimento.

---

## Project Context

O contexto permanente do projeto é mantido em:

```text
.ai/
├── context.md
├── architecture.md
└── design.md
```

### context.md

Contém o contexto geral do projeto, incluindo quando aplicável:

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

### architecture.md

Contém informações sobre:

* arquitetura;
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
* observabilidade.

### design.md

Contém padrões e convenções de desenvolvimento, incluindo:

* organização do código;
* convenções;
* padrões;
* validações;
* tratamento de erros;
* testes;
* logging;
* configuração;
* nomenclatura;
* práticas de desenvolvimento.

Antes de realizar alterações relevantes, consulte o contexto disponível.

---

## SDD Workflow

O workflow principal deste projeto é:

```text
Project Context
      |
      v
Specification
      |
      v
Clarification
      |
      v
Plan
      |
      v
Human Approval
      |
      v
Tasks
      |
      v
Human Approval
      |
      v
Implementation
      |
      v
Validation
```

Cada etapa deve possuir responsabilidades claras.

As regras detalhadas de execução devem permanecer nas skills correspondentes.

---

## SDD Config

A `SDD Config` é responsável por criar ou atualizar o contexto permanente do projeto.

Seu objetivo é permitir que a IA compreenda o projeto antes de iniciar o desenvolvimento de funcionalidades.

A análise deve considerar, quando disponíveis:

* estrutura do projeto;
* código existente;
* stack;
* arquitetura;
* dependências;
* padrões;
* documentação;
* regras de negócio;
* integrações;
* configurações;
* testes;
* restrições.

A `SDD Config` deve documentar informações encontradas no projeto e identificar informações desconhecidas.

Não invente regras de negócio, decisões arquiteturais ou padrões que não possam ser sustentados pelas evidências disponíveis.

---

## SDD Start

A `SDD Start` inicia o desenvolvimento de uma feature a partir de uma specification existente.

A feature deve possuir:

```text
specs/
└── <feature>/
    └── spec.md
```

A specification é obrigatória.

A `SDD Start` não deve iniciar o planejamento se:

* a `spec.md` não existir;
* a `spec.md` estiver vazia;
* informações essenciais estiverem ausentes;
* existirem ambiguidades que impeçam o planejamento.

Nessas situações, interrompa o workflow e informe ao usuário o que precisa ser resolvido.

Nunca invente uma specification para permitir que o workflow continue.

---

## Specification

A specification descreve principalmente:

* o problema;
* o objetivo;
* o comportamento esperado;
* os requisitos;
* as regras de negócio;
* os critérios de aceitação.

A specification deve responder principalmente:

> O que deve ser feito e por quê?

Detalhes de implementação devem permanecer fora da specification quando não forem necessários para definir o comportamento esperado.

---

## Planning

O planejamento descreve como a solução será implementada.

O plano pode abordar:

* arquitetura;
* componentes;
* fluxo de dados;
* persistência;
* APIs;
* integrações;
* alterações necessárias;
* estratégia de testes;
* impactos no sistema;
* decisões técnicas.

Quando uma decisão técnica relevante não estiver definida, consulte o usuário antes de consolidá-la no plano.

---

## Tasks

As tasks representam as etapas concretas necessárias para implementar o plano aprovado.

Cada task deve:

* possuir objetivo claro;
* estar relacionada ao plano;
* possuir escopo definido;
* evitar trabalho não relacionado;
* indicar os arquivos ou componentes relevantes quando possível.

As tasks não devem introduzir decisões que não estejam presentes na specification ou no plano aprovado.

---

## Approval Gates

O workflow possui pontos explícitos de aprovação humana.

### Plan

Depois de gerar o plano:

```text
plan.md
```

interrompa o workflow e solicite aprovação.

Não gere as tasks finais antes da aprovação do plano.

### Tasks

Depois de gerar as tasks:

```text
tasks.md
```

interrompa novamente e solicite aprovação.

Não inicie a implementação antes da aprovação das tasks.

### Approval Flow

```text
Generate Plan
      |
      v
Human Review
      |
      +---- Changes ----> Update Plan
      |
      v
Plan Approved
      |
      v
Generate Tasks
      |
      v
Human Review
      |
      +---- Changes ----> Update Tasks
      |
      v
Tasks Approved
      |
      v
Implementation
```

O silêncio do usuário não deve ser interpretado como aprovação.

---

## Scope Control

Não expanda o escopo de uma feature silenciosamente.

Se durante o desenvolvimento surgir uma necessidade que não esteja contemplada na specification ou no plano aprovado:

1. identifique a mudança;
2. explique o motivo;
3. explique o impacto;
4. apresente alternativas quando apropriado;
5. solicite decisão humana.

Não implemente mudanças relevantes apenas porque parecem tecnicamente convenientes.

---

## Conflict Resolution

Se houver conflito entre os seguintes artefatos:

```text
.ai/context.md
.ai/architecture.md
.ai/design.md
spec.md
plan.md
tasks.md
```

não escolha silenciosamente qual informação deve prevalecer.

Identifique:

* os artefatos conflitantes;
* a natureza do conflito;
* o impacto;
* a recomendação, quando houver.

Depois, solicite uma decisão humana quando necessário.

---

## Project Context Updates

A implementação de uma feature não deve atualizar automaticamente:

```text
.ai/context.md
.ai/architecture.md
.ai/design.md
```

Caso uma feature introduza uma mudança permanente no projeto, identifique essa mudança.

Exemplo:

```text
A implementação introduziu uma alteração arquitetural permanente.

Essa alteração deve ser incorporada ao contexto permanente do projeto?
```

A atualização do contexto deve ser deliberada.

---

## Code Changes

Antes de modificar código existente:

1. entenda a estrutura relevante;
2. localize os componentes afetados;
3. consulte padrões existentes;
4. verifique dependências;
5. verifique testes;
6. verifique configurações relacionadas;
7. avalie impactos.

Ao implementar:

* siga os padrões existentes;
* reutilize componentes quando apropriado;
* evite abstrações prematuras;
* mantenha baixo acoplamento;
* mantenha alta coesão;
* trate erros de forma consistente;
* adicione testes quando aplicável.

Não realize refatorações não relacionadas ao escopo da feature.

---

## Dependencies

Antes de adicionar uma dependência:

1. verifique se o projeto já possui uma solução adequada;
2. avalie a necessidade;
3. verifique compatibilidade;
4. considere manutenção;
5. considere segurança;
6. considere impacto no projeto.

Não adicione dependências apenas para resolver problemas triviais.

---

## Security

Nunca registre informações sensíveis nos artefatos do SDD.

Não armazenar:

* passwords;
* API keys;
* access tokens;
* secrets;
* credenciais;
* valores sensíveis de `.env`;
* dados privados desnecessários.

Quando uma integração exigir credenciais, documente apenas como elas devem ser configuradas.

---

## Git

Respeite as convenções existentes do repositório.

Não execute operações destrutivas sem autorização explícita.

Evite operações como:

```bash
git reset --hard
git clean -fd
```

quando houver risco de perda de trabalho.

Não crie commits automaticamente, exceto quando solicitado explicitamente.

---

## Communication

Quando houver bloqueio:

```text
BLOQUEIO

Motivo:
...

Informação necessária:
...

Ação necessária:
...
```

Quando houver uma decisão necessária:

```text
DECISÃO NECESSÁRIA

Contexto:
...

Alternativas:
A. ...
B. ...
C. ...

Recomendação:
...

Impacto:
...

Aguardando decisão humana.
```

Quando uma etapa for concluída:

```text
ETAPA CONCLUÍDA

Artefato:
...

Alterações:
...

Status:
...

Próxima etapa:
...
```

---

## Skills

As etapas específicas do workflow são implementadas através de skills.

Estrutura esperada:

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

O `GEMINI.md` define as regras gerais do projeto.

Cada `SKILL.md` define o comportamento específico de uma skill.

Não duplicar no `GEMINI.md` regras operacionais que pertencem exclusivamente a uma skill.

---

## Relationship with Spec Kit

Este workflow é inspirado no conceito de Specification-Driven Development e utiliza o Spec Kit como referência.

Entretanto, o projeto possui um workflow próprio.

Os comandos e artefatos do Spec Kit não devem ser tratados automaticamente como parte deste workflow.

O comportamento das skills customizadas do projeto possui prioridade dentro do workflow SDD definido neste repositório.

---

## Quality Principles

Priorize:

* clareza;
* simplicidade;
* previsibilidade;
* rastreabilidade;
* consistência;
* segurança;
* manutenibilidade;
* decisões explícitas;
* evidências verificáveis.

Evite complexidade desnecessária.

Não introduza abstrações, padrões ou tecnologias apenas por serem tecnicamente sofisticados.

---

## Final Rule

Antes de realizar uma ação relevante, verifique:

1. O que estou fazendo?
2. Por que estou fazendo?
3. Qual requisito ou decisão autoriza essa ação?
4. Essa decisão já foi aprovada?
5. Existe alguma ambiguidade?
6. Qual será o impacto?

Se existir uma decisão relevante pendente:

```text
PARAR
IDENTIFICAR
EXPLICAR
PERGUNTAR
AGUARDAR
```

A IA deve priorizar clareza, rastreabilidade e controle humano em vez de velocidade de execução.
