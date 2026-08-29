# Especificação da Funcionalidade: [NOME DA FUNCIONALIDADE]

**Branch da Funcionalidade**: `[###-nome-da-funcionalidade]`

**Entrada**: Descrição do usuário: "$ARGUMENTS"

## Cenários de Usuário e Testes *(obrigatório)*

<!--
  IMPORTANTE: As histórias de usuário devem ser PRIORIZADAS como jornadas ordenadas por importância.
  Cada história/jornada de usuário deve ser TESTÁVEL DE FORMA INDEPENDENTE — ou seja, se você implementar apenas UMA delas,
  você ainda terá um MVP (Produto Mínimo Viável) viável que entrega valor real ao usuário.

  Atribua prioridades (P1, P2, P3, etc.) para cada história, onde P1 é a mais crítica.
  Pense em cada história como uma fatia vertical independente de funcionalidade que pode ser:
  - Desenvolvida de forma independente
  - Testada de forma independente
  - Implantada de forma independente
  - Demonstrada aos usuários de forma independente
-->

### História de Usuário 1 - [Título Breve] (Prioridade: P1)

[Descreva esta jornada do usuário em linguagem clara e acessível]

**Por que esta prioridade**: [Explique o valor de negócio/usuário e por que tem este nível de prioridade]

**Teste Independente**: [Descreva como isso pode ser testado isoladamente - ex.: "Pode ser totalmente testado executando [ação específica] e entrega [valor específico]"]

**Cenários de Aceite**:

1. **Dado** [estado inicial], **Quando** [ação do usuário], **Então** [resultado esperado]
2. **Dado** [estado inicial], **Quando** [ação do usuário], **Então** [resultado esperado]

---

### História de Usuário 2 - [Título Breve] (Prioridade: P2)

[Descreva esta jornada do usuário em linguagem clara e acessível]

**Por que esta prioridade**: [Explique o valor e por que tem este nível de prioridade]

**Teste Independente**: [Descreva como isso pode ser testado independentemente]

**Cenários de Aceite**:

1. **Dado** [estado inicial], **Quando** [ação do usuário], **Então** [resultado esperado]

---

### História de Usuário 3 - [Título Breve] (Prioridade: P3)

[Descreva esta jornada do usuário em linguagem clara e acessível]

**Por que esta prioridade**: [Explique o valor e por que tem este nível de prioridade]

**Teste Independente**: [Descreva como isso pode ser testado independentemente]

**Cenários de Aceite**:

1. **Dado** [estado inicial], **Quando** [ação do usuário], **Então** [resultado esperado]

---

[Adicione mais histórias de usuário conforme necessário, cada uma com prioridade atribuída]

-->

### Requisitos Funcionais

- **RF-001**: O sistema DEVE [capacidade específica, ex.: "permitir que usuários criem contas"]
- **RF-002**: O sistema DEVE [validação, ex.: "validar o formato de endereços de e-mail"]
- **RF-003**: Os usuários DEVEM ser capazes de [interação principal, ex.: "redefinir sua senha"]
- **RF-004**: O sistema DEVE [requisito de dados, ex.: "persistir as preferências do usuário"]
- **RF-005**: O sistema DEVE [comportamento, ex.: "registrar eventos de segurança e auditoria"]

*Exemplo de marcação para requisitos não claros:*

- **RF-006**: O sistema DEVE autenticar usuários via [PRECISA DE ESCLARECIMENTO: método de auth não especificado - e-mail/senha, SSO, OAuth?]
- **RF-007**: O sistema DEVE reter dados do usuário por [PRECISA DE ESCLARECIMENTO: período de retenção não definido]

## Critérios de Sucesso *(obrigatório)*

<!--
  AÇÃO NECESSÁRIA: Defina critérios de sucesso mensuráveis.
  Eles devem ser agnósticos de tecnologia e focados no usuário/negócio.
-->

### Resultados Mensuráveis

- **CS-001**: [Métrica mensurável, ex.: "Usuários conseguem concluir a criação de conta em menos de 2 minutos"]
- **CS-002**: [Métrica de escala, ex.: "O sistema suporta 1.000 requisições simultâneas sem degradação perceptível"]
- **CS-003**: [Métrica de satisfação, ex.: "90% dos usuários completam a tarefa principal na primeira tentativa"]
- **CS-004**: [Métrica de negócio, ex.: "Reduzir tickets de suporte relacionados a [X] em 50%"]

## Suposições

- [Suposição sobre público-alvo, ex.: "Usuários possuem conexão de internet estável"]
- [Suposição sobre escopo, ex.: "Suporte a aplicativo móvel está fora do escopo da v1"]
- [Suposição sobre ambiente, ex.: "O sistema de autenticação existente será reutilizado"]
- [Dependência de serviços existentes, ex.: "Requer acesso à API de catálogo legada"]
