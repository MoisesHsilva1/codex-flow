# Validação do MVP

Esta é a matriz mínima para validar o Basic Development Workflow no Codex. Ela testa o carregamento de `AGENTS.md`, a descoberta das skills em `.codex/skills/` e a execução com ou sem delegação disponível.

## Pré-requisitos

- confirmar a versão do Codex e o diretório de skills que ele carrega;
- confirmar instalação global em `~/.codex/skills/`, por projeto em `.codex/skills/` e seletiva;
- criar um projeto de teste descartável e um projeto com `AGENTS.md` global, de raiz e de subdiretório;
- registrar comandos, versão do runtime e conteúdo carregado em cada cenário.

## Cenários mínimos

1. Bug reproduzível: aplicar `systematic-debugging`, registrar reprodução, causa e teste de regressão.
2. Funcionalidade pequena: aplicar `basic-workflow`, interromper em decisão material e validar a mudança ao final.
3. Refatoração: aplicar `codebase-exploration` e `code-review`, preservando contratos e comportamento.
4. Sem skills: repetir os três cenários com apenas as instruções nativas do runtime.
5. Com delegação disponível e indisponível: comparar o resultado do papel delegado com a execução no próprio Codex.

## Métricas

Registre, por cenário, contexto carregado, intervenções solicitadas, tempo, comandos de teste, regressões encontradas e clareza da conclusão. Só promova uma skill, documento de contexto ou configuração de agente quando houver benefício repetível.

Esta matriz é um procedimento de validação; a precedência de `AGENTS.md` deve ser confirmada no Codex usado antes de transformar uma observação em regra do kit.
