---
name: dependency-audit
description: "Avalia dependências diretas e transitivas por vulnerabilidade, suporte, licença, duplicação e necessidade antes de atualizar ou adicionar pacotes."
---

# Dependency Audit

Use quando a tarefa envolve adicionar, atualizar, remover ou investigar uma dependência, lockfile, imagem base ou ferramenta de build.

## Procedimento

1. Identifique manifestos, lockfiles, gerenciadores e ambientes afetados.
2. Confirme por que a dependência é necessária e se já existe uma capacidade equivalente no projeto.
3. Verifique compatibilidade de runtime, licença, manutenção, transitive dependencies e advisories disponíveis.
4. Avalie impacto no bundle, build, superfície de ataque, licença e reprodutibilidade do lockfile.
5. Proponha a menor alteração segura; não atualize pacotes em massa sem escopo e validação.

## Saída esperada

Entregue uma tabela curta com pacote, versão atual/alvo, motivo, risco, impacto e validações. Se houver vulnerabilidade, diferencie exposição real da presença transitiva sem caminho explorável.
