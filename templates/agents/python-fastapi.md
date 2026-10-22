# Repository Guidelines

Este repositório é uma aplicação Python com FastAPI e usa `[uv/poetry/pip]`.

## Estrutura do projeto

- `app/` ou `src/`: pacote principal.
- `api/` ou `routers/`: rotas e dependências HTTP.
- `services/` ou `use_cases/`: aplicação.
- `domain/` ou `models/`: domínio.
- `repositories/`: persistência.
- `schemas/`: entrada e saída.
- `tests/`: testes.
- `[app/main.py]`: entrypoint real.

## Comandos

Substitua os placeholders pelos comandos que realmente existem no projeto: `[gerenciador] install`, `[comando] run dev`, `[comando] run lint`, `[comando] run test` e `[comando] run typecheck`.

Use o ambiente e o gerenciador adotados. Atualize a fonte de dependências e o lockfile juntos.

## Python e FastAPI

- Siga a versão, formatter e linter declarados.
- Use type hints nas fronteiras e modelos Pydantic para contratos.
- Mantenha routers finos e regras em serviços/casos de uso.
- Preserve startup/shutdown, middleware e exceções existentes.
- Não bloqueie o event loop com I/O síncrono em endpoints assíncronos.

## Testes e segurança

- Teste validação, status codes, payloads, autorização e falhas de integração.
- Isole banco, rede e relógio quando o teste não for de integração.
- Execute lint, typecheck e testes reais antes de concluir.
- Nunca copie valores de `.env` para documentação ou logs.
