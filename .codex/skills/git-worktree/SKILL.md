---
name: git-worktree
description: "Isola trabalho paralelo em Git worktrees quando tarefas independentes precisam compartilhar o mesmo repositório sem misturar alterações."
---

# Git Worktree

Use somente quando o usuário pedir isolamento paralelo ou quando o trabalho independente realmente se beneficiar de worktrees.

## Procedimento

1. Confirme repositório, branch base, worktrees existentes e alterações não commitadas.
2. Escolha um caminho explícito fora de outro worktree e um nome de branch descritivo.
3. Crie o worktree sem mover, descartar ou sobrescrever alterações do usuário.
4. Registre no handoff o caminho, branch, base, dependências e comandos de validação.
5. Ao finalizar, verifique alterações e só remova o worktree se o usuário pedir ou autorizar expressamente.

## Limites

- Não use worktree para uma mudança pequena e sequencial sem benefício claro.
- Não faça `reset --hard`, `checkout --` ou remoção de worktree para “limpar” o estado.
- Não presuma que `.env`, dependências instaladas ou serviços locais podem ser compartilhados com segurança.

## Saída esperada

Informe o isolamento criado, branch/base, arquivos compartilhados relevantes, estado final e qualquer limpeza deixada para decisão do usuário.
