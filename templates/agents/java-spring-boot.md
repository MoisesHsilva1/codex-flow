# Repository Guidelines

Este repositório é uma aplicação Java `[versão]` com Spring Boot e usa `[Maven/Gradle]`.

## Estrutura do projeto

- `src/main/java/[package]/`: produção.
- `controller/`: entrada HTTP e contratos.
- `service/`: aplicação e regras.
- `repository/`: persistência.
- `model/`, `entity/` ou `domain/`: domínio.
- `dto/` e `mapper/`: fronteiras.
- `configuration/`: infraestrutura transversal.
- `src/main/resources/`: propriedades e migrations.
- `src/test/`: testes.

## Comandos

Com Maven, use `./mvnw test`, `./mvnw verify` e `./mvnw spring-boot:run`. Para Gradle, use os scripts reais `./gradlew`. Prefira o wrapper do projeto.

## Java e Spring

- Use constructor injection; preserve Lombok quando já adotado.
- Mantenha controllers finos e serviços responsáveis por regras.
- Preserve DTOs, validação, exceções e formato de erro.
- Não crie abstrações antes de uma necessidade concreta.
- Use transações, queries e migrations conforme o módulo.

## Testes e segurança

- Isole serviços em testes unitários e use testes de slice/integrados quando o comportamento depender do Spring.
- Cubra sucesso, validação, autorização, ausência de dados e falhas externas.
- Execute `test` e `verify` antes de concluir.
- Não commite secrets em `application*.properties`/`yaml`.
