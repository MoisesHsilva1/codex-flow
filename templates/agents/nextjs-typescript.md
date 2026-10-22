# Repository Guidelines

Este repositório é uma aplicação Next.js com TypeScript e usa `[App Router/Pages Router — confirmar]`.

## Estrutura do projeto

- `app/` ou `pages/`: rotas, layouts e páginas.
- `components/`: componentes reutilizáveis.
- `lib/` ou `src/lib/`: integrações e utilitários.
- `server/`: lógica exclusiva do servidor, se existir.
- `public/`: arquivos estáticos.
- `tests/` ou arquivos `*.test.*`: testes.
- `next.config.[js/mjs/ts]`: configuração.

Confirme a convenção de roteamento antes de criar uma nova rota.

## Comandos

```bash
[npm/pnpm/yarn] install
[npm/pnpm/yarn] run dev
[npm/pnpm/yarn] run lint
[npm/pnpm/yarn] run test
[npm/pnpm/yarn] run build
```

Durante iteração, prefira o servidor de desenvolvimento com HMR. Execute build de produção quando a validação pedir.

## Server e Client Components

- Prefira Server Components por padrão quando o App Router estiver em uso.
- Use `'use client'` somente para estado, efeitos, eventos ou APIs do navegador.
- Não atravesse a fronteira server/client com secrets ou objetos não serializáveis.
- Mantenha dados e credenciais em módulos server-only.

## Convenções e validação

- Preserve layouts, loading, error, metadata e route handlers existentes.
- Co-localize código específico da rota quando seguir o padrão atual.
- Atualize o lockfile ao alterar dependências.
- Teste loading, erro, autorização e navegação.
- Variáveis `NEXT_PUBLIC_*` são públicas; nunca coloque secrets nelas.
