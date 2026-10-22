# Instruções Globais Opcionais

Este arquivo é um modelo para `~/.codex/AGENTS.md`. Use somente regras universais, curtas e de baixo acoplamento. Adapte o texto antes de instalar.

## Desenvolvimento

- Inspecione o código relevante antes de alterar arquivos.
- Siga as convenções existentes no projeto.
- Prefira soluções focadas a abstrações desnecessárias.
- Evite modificações que não estejam relacionadas à tarefa.

## Decisões

- Peça esclarecimento quando uma ambiguidade puder mudar materialmente a solução.
- Prefira evidências do repositório e documentação oficial a suposições.
- Diferencie fatos observados, requisitos definidos, inferências, recomendações e pendências.

## Validação

- Execute verificações relevantes quando forem compatíveis com o ambiente.
- Nunca declare testes aprovados sem executá-los.
- Relate com precisão verificações que falharam ou não puderam ser executadas.

## Segurança

- Não exponha secrets, tokens, credenciais ou valores sensíveis de ambiente.
- Evite ações destrutivas sem autorização adequada.
- Preserve alterações existentes do usuário.

## Comunicação

- Mantenha as explicações proporcionais à tarefa.
- Resuma alterações, evidências de validação e limitações.

## Limites deste arquivo

- Não coloque arquitetura, comandos ou convenções de um projeto específico aqui.
- Não copie tutoriais, histórico de conversas ou procedimentos completos de skills.
- Respeite instruções mais específicas do projeto e de subdiretórios.

O instalador ou usuário deve criar o arquivo somente se ele não existir. Nunca sobrescreva, mescle ou remova automaticamente um `~/.codex/AGENTS.md` existente.
