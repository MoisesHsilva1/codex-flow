# Design

<!--
  Instruções de Preenchimento:
  - Este documento consolida padrões de código, convenções de engenharia, práticas de design e diretrizes para IA.
  - Distinga claramente o que já é praticado no código existente das diretrizes recomendadas.
  - Não invente informações. Caso uma seção não possua evidências no projeto, utilize:
    > ⚠️ Não identificado durante a análise do projeto.
    ### Necessário definir
    - [Pergunta ou ponto a ser esclarecido pelo usuário]
-->

## Princípios de Desenvolvimento

<!-- Princípios de engenharia adotados no projeto (ex.: Clean Code, SOLID, DRY, KISS, YAGNI, Separation of Concerns). -->

- **[Princípio 1]**: [Como é aplicado no dia a dia do desenvolvimento]
- **[Princípio 2]**: [Como é aplicado no dia a dia do desenvolvimento]

## Convenções

<!-- Regras de nomenclatura de arquivos, pastas, variáveis, classes, tipos e métodos. -->

- **Nomenclatura de Arquivos**: [ex.: kebab-case (user-service.ts), snake_case, PascalCase]
- **Nomenclatura de Classes / Tipos**: [ex.: PascalCase (UserService, UserDto)]
- **Nomenclatura de Variáveis / Funções**: [ex.: camelCase (getUserById, activeUser)]
- **Constantes**: [ex.: SCREAMING_SNAKE_CASE (MAX_RETRY_ATTEMPTS)]
- **Estilo e Formatação**: [ex.: ESLint, Prettier, Black, Spotless, rustfmt com configs definidas]

## Organização do Código

<!-- Estratégia de organização do código-fonte (por funcionalidade/feature, por camada técnica, arquitetura hexagonal). -->

- **Abordagem de Estruturação**: [ex.: Package-by-feature, Layered (controllers/services/repos), Ports and Adapters]
- **Regras de Importação**: [ex.: Aliases configurados (@/components, @/modules), imports absolutos vs relativos]

## Padrões Utilizados

<!-- Padrões de projeto (GoF ou corporativos) identificados no código. -->

- **[Padrão 1, ex.: Repository Pattern]**: [Onde e como é utilizado no código]
- **[Padrão 2, ex.: Factory / Builder / Strategy]**: [Onde e como é utilizado no código]

## Modelagem

<!-- Padrões de DTOs, entidades de domínio, value objects, interfaces e schemas de dados. -->

- **Entidades de Domínio**: [Estrutura e localização das classes/modelos de domínio]
- **DTOs / Schemas de Entrada e Saída**: [Padrão adotado para transferência e validação de dados]
- **Imutabilidade**: [Se é adotado padrão de imutabilidade em dados de domínio]

## APIs

<!-- Convenções de design de endpoints, contratos, status codes e serialização. -->

- **Estrutura de URLs**: [ex.: Plural para recursos (`/api/v1/users`), kebab-case em parâmetros]
- **Padrão de Resposta HTTP**: [Formato de envelope padrão de sucesso `{ data: ... }` ou payload direto]
- **Paginação**: [Padrão adotado: cursor-based, offset-based (`page`, `pageSize` / `limit`, `offset`)]

## Validação

<!-- Estratégia de validação de dados de entrada, schemas e regras de negócio. -->

- **Validação de Entrada (Payload/Query/Params)**: [ex.: Zod, Class-Validator, Joi, Pydantic, Bean Validation]
- **Momento da Validação**: [ex.: Middleware / Pipe antes de atingir o controller / handler]

## Tratamento de Erros

<!-- Hierarquia de exceções, formato padronizado de erro e middlewares globais. -->

- **Formato de Resposta de Erro**: [ex.: RFC 7807 (Problem Details), `{ error: string, message: string, code: number }`]
- **Exceções de Domínio**: [Classes de erro customizadas, ex.: `EntityNotFoundException`, `DomainValidationException`]
- **Tratamento Global**: [Middleware / Exception Filter centralizado para captura e formatação de erros]

## Testes

<!-- Estratégias, pirâmide de testes, frameworks, fixtures e convenções de nomenclatura de testes. -->

- **Frameworks de Teste**: [ex.: Jest, Vitest, Pytest, JUnit 5, Go testing]
- **Convenção de Nomenclatura**: [ex.: `*.spec.ts`, `*.test.ts`, `test_*.py`]
- **Mocks e Stubs**: [ex.: Testcontainers, Jest mock, Mockito, Sinon]
- **Pirâmide de Testes**: [Foco atual do projeto: testes unitários, de integração ou ponta a ponta]

## Banco de Dados

<!-- Convenções de tabelas, colunas, chaves estrangeiras, migrações e índices. -->

- **Nomenclatura de Tabelas**: [ex.: plural em snake_case (`users`, `order_items`)]
- **Nomenclatura de Colunas**: [ex.: snake_case (`created_at`, `user_id`)]
- **Chaves Primárias**: [ex.: UUID v4, CUID, BIGINT auto-increment]
- **Estratégia de Migração**: [Como e quando as migrações são executadas]

## Segurança

<!-- Práticas no nível de código: sanitização, prevenção de SQL injection/XSS, headers, proteção contra CSRF. -->

- **Sanitização e Escape**: [Prevenção nativa via ORM/Prepared Statements]
- **Headers de Segurança**: [ex.: Helmet, CORS configurado com origens explícitas]
- **Gestão de Segredos**: [Uso estrito de variáveis de ambiente sem secrets hardcoded]

## Logging

<!-- Padrões de formatação, contexto, níveis e mascaramento de dados sensíveis. -->

- **Formato de Log**: [ex.: JSON estruturado contendo timestamp, level, correlationId/requestId, context, message]
- **Níveis Utilizados**: [TRACE, DEBUG, INFO, WARN, ERROR]
- **Mascaramento de Dados (PII)**: [Regras para não logar senhas, dados de cartão, tokens e CPFs/emails]

## Observabilidade

<!-- Instrumentação de código, métricas personalizadas, tracking de performance e traces. -->

- **Instrumentação**: [ex.: Middlewares de tempo de resposta, contadores de requisições, OpenTelemetry spans]
- **Métricas Customizadas**: [Métricas de negócio ou de latência identificadas]

## Performance

<!-- Boas práticas aplicadas no código para garantir eficiência e baixo consumo de recursos. -->

- **Queries e Acesso a Dados**: [Prevenção de problemas N+1, uso de selects específicos, paginação obrigatória]
- **Processamento Assíncrono**: [Uso de filas ou workers para tarefas pesadas ou I/O demorado]
- **Cache Local / Distribuído**: [Cache em memória ou Redis com TTL apropriado]

## Configuração

<!-- Como o código consome configurações de ambiente e parâmetros de execução. -->

- **Módulo de Configuração**: [ex.: `dotenv`, `@nestjs/config`, `pydantic-settings`, viper]
- **Validação de Schema de Configuração**: [Garantia de que a aplicação falha rápido (fail-fast) se faltar variável obrigatória]

## Dependências

<!-- Políticas e padrões para injeção de dependências e inclusão de bibliotecas externas. -->

- **Injeção de Dependência (DI)**: [ex.: Inversão de controle nativa do framework, tsyringe, Awilix ou passagem explícita]
- **Critérios para Adição de Novas Bibliotecas**: [Avaliação de manutenção, vulnerabilidades e tamanho do bundle]

## Git

<!-- Padrões de versionamento, mensagens de commit e fluxo de branches. -->

- **Convenção de Commits**: [ex.: Conventional Commits (`feat:`, `fix:`, `refactor:`, `docs:`, `chore:`)]
- **Estratégia de Branch**: [ex.: GitFlow, GitHub Flow, Trunk Based Development]

## Documentação

<!-- Padrões de documentação no código (JSDoc, docstrings, OpenAPI/Swagger, ADRs). -->

- **Comentários no Código**: [Apenas para regras de negócio não triviais e decisões não óbvias]
- **Documentação de Métodos / Funções**: [Docstrings / TSDoc em interfaces públicas e módulos críticos]

## Regras para IA

<!-- Diretrizes estritas para agentes de IA atuando no código deste projeto. -->

- **O que FAZER**:
  - Respeitar estritamente as convenções de código e nomenclatura descritas neste documento.
  - Manter a consistência arquitetural e padrões de camadas.
  - Implementar testes automatizados para novas funcionalidades e correções.
  - Preservar comentários existentes relevantes e docstrings.
  - Comunicar-se e documentar em Português do Brasil (PT-BR).
- **O que NÃO FAZER**:
  - Não introduzir dependências ou bibliotecas sem justificativa técnica explícita.
  - Não commitar segredos, chaves de API, senhas ou dados sensíveis.
  - Não alterar a arquitetura global sem documentação prévia.
  - Não ignorar tratamento de erros ou criar blocos catch vazios.

## Anti-Patterns

<!-- Práticas expressamente proibidas ou desaconselhadas neste projeto. -->

- **[Anti-Pattern 1]**: [Por que é prejudicial e o que deve ser feito no lugar]
- **[Anti-Pattern 2]**: [Por que é prejudicial e o que deve ser feito no lugar]

## Débitos Técnicos

<!-- Débitos técnicos conhecidos, TODOs críticos ou itens de refatoração identificados no código. -->

- **[Débito 1]**: [Descrição do débito técnico, localização no código e impacto]
- **[Débito 2]**: [Descrição do débito técnico, localização no código e impacto]

## Pontos Pendentes

<!-- Padrões de design ou convenções não identificadas que dependem de definição do time/usuário. -->

### Lacunas e Dúvidas a Esclarecer
- [ ] [Ponto de design pendente 1]
- [ ] [Ponto de design pendente 2]
