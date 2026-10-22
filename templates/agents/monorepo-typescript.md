# Repository Guidelines

Este repositório é um monorepo TypeScript com `[pnpm/npm/yarn]` workspaces e `[Turbo/Nx/outro]`.

## Estrutura do projeto

- `apps/`: aplicações.
- `packages/`: bibliotecas compartilhadas.
- `tooling/`: lint, TypeScript e build.
- `[workspace config]`: workspaces.
- `[pipeline config]`: tarefas e dependências.

Antes de alterar um pacote compartilhado, identifique consumidores e pipeline afetados.

## Comandos

Use os scripts reais para instalação, dev, lint, testes e build. Prefira filtros para iterar e execute a validação completa antes de concluir uma alteração transversal.

## Dependências e fronteiras

- Atualize o lockfile com alterações de dependência.
- Prefira uma dependência já instalada antes de adicionar outra.
- Mantenha versões compartilhadas na fonte central existente.
- Não introduza imports que violem fronteiras entre apps e packages.
- Teste o pacote alterado e os consumidores afetados.

## Git e escopo

- Não execute tarefas globais caras para uma alteração local sem necessidade.
- Não misture mudanças em múltiplos apps/packages sem explicar a dependência.
- Preserve configurações de pipeline e cache existentes.
