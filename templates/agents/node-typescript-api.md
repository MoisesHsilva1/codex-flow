# Repository Guidelines

Este repositório é uma API Node.js/TypeScript construída com `[Fastify/Express/NestJS/outro]`.

## Estrutura do projeto

- `src/`: produção.
- `src/routes/` ou `src/controllers/`: entradas HTTP.
- `src/services/` ou `src/use-cases/`: casos de uso.
- `src/domain/`: regras de negócio, se houver.
- `src/repositories/`: persistência.
- `src/schemas/` ou `src/validators/`: contratos.
- `src/config/`: ambiente.
- `tests/`: testes por camada.
- `[src/server.ts]`: entrypoint real.

## Comandos

```bash
[npm/pnpm/yarn] install
[npm/pnpm/yarn] run dev
[npm/pnpm/yarn] run lint
[npm/pnpm/yarn] run test
[npm/pnpm/yarn] run test:integration
[npm/pnpm/yarn] run build
```

Use o lockfile existente e mantenha scripts, build e tipos sincronizados.

## API e domínio

- Valide entradas na fronteira e mantenha regras fora do handler HTTP.
- Preserve status codes, formato de erro, autenticação e versionamento.
- Não exponha entidades internas quando o contrato usa DTOs/schemas.
- Mantenha integrações externas atrás das interfaces existentes.
- Trate timeouts, retries e falhas conforme o padrão do projeto.

## Testes e segurança

- Cubra sucesso, validação, autorização, falhas de dependência e idempotência quando aplicável.
- Isole banco, rede e relógio em testes unitários.
- Evite `any` e casts que escondam incompatibilidades.
- Nunca registre tokens, payloads sensíveis ou secrets.
