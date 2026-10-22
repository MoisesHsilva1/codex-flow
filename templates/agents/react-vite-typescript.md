# Repository Guidelines

Este repositório é uma aplicação SPA construída com Vite, React e TypeScript.

## Estrutura do projeto

- `src/`: código da aplicação.
- `src/components/`: componentes reutilizáveis conforme o padrão existente.
- `src/routes/` ou `src/pages/`: rotas e telas.
- `src/hooks/`: hooks compartilhados.
- `src/api/` ou `src/services/`: integrações.
- `src/types/`: tipos compartilhados.
- `src/assets/`: imagens, ícones e fontes.
- `src/config/`: configuração e ambiente.
- `src/main.tsx`: ponto de entrada.
- `index.html`: entrada do Vite.

Antes de criar componente, hook, serviço ou rota, procure algo equivalente em `src/`.

## Comandos

```bash
[npm/pnpm/yarn] install
[npm/pnpm/yarn] run dev
[npm/pnpm/yarn] run lint
[npm/pnpm/yarn] run test
[npm/pnpm/yarn] run build
[npm/pnpm/yarn] run preview
```

Use o gerenciador indicado pelo lockfile. Se não houver script, registre a lacuna.

## Padrões React e TypeScript

- Use componentes funcionais e TypeScript.
- Componentes e tipos públicos usam `PascalCase`; hooks começam com `use`; funções usam `camelCase`.
- Prefira o alias já configurado para imports internos.
- Evite `any`; modele estados de carregamento, sucesso e erro explicitamente.
- Preserve a arquitetura de componentes existente.

## UI e acessibilidade

- Reutilize tokens, componentes e estilos antes de criar variantes.
- Formulários precisam de labels, estados de erro e foco acessível.
- Verifique mudanças visuais no servidor de desenvolvimento em desktop e mobile.

## Testes e segurança

- Use `[Vitest/Jest/Testing Library/Playwright]` conforme a configuração real.
- Teste comportamento do usuário, não detalhes internos.
- Execute lint, testes e build com os scripts reais do `package.json`.
- Nunca exponha secrets no bundle ou em valores `VITE_*`.
