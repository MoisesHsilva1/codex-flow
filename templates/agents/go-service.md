# Repository Guidelines

Este repositório é um serviço Go `[versão]`.

## Estrutura do projeto

- `cmd/`: entrypoints.
- `internal/`: pacotes privados.
- `pkg/`: pacotes públicos somente quando houver consumidores.
- `api/`: contratos e handlers.
- `repository/` e `service/`: persistência e aplicação.
- `migrations/`: migrações, se aplicável.
- `*_test.go`: testes próximos do código.

## Comandos

Use os comandos reais do projeto: `go mod download`, `go test ./...`, `go vet ./...`, `go build ./...` e o lint configurado.

Mantenha `go.mod` e `go.sum` sincronizados. Use `gofmt`/`goimports` conforme o padrão existente.

## Convenções Go

- Siga nomes idiomáticos e organização existentes.
- Retorne erros explicitamente e preserve contexto com wrapping.
- Respeite `context.Context`, cancelamento e timeouts em I/O.
- Crie interfaces somente em fronteiras que precisam de substituição.
- Mantenha handlers pequenos e regras testáveis.

## Testes e operação

- Use table-driven tests quando melhorar a clareza.
- Valide concorrência e race conditions quando houver estado compartilhado.
- Execute testes, vet, lint configurado e build.
- Não registre secrets ou payloads sensíveis.
