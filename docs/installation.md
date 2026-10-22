# Distribuição Codex

Este kit distribui skills e templates exclusivamente para o Codex. Ele não modifica automaticamente configurações globais do usuário.

## Instalação seletiva

Copie somente as pastas necessárias de `.codex/skills/` para o diretório de skills do Codex. A instalação seletiva é a opção recomendada para reduzir contexto carregado.

## Instalação por projeto

Mantenha as skills em `.codex/skills/` quando o projeto precisar versionar o procedimento. Adicione ao `AGENTS.md` do projeto apenas comandos, convenções e restrições específicas; não copie regras genéricas sem necessidade.

## Instalação global

O arquivo `templates/AGENTS.global.md` é um ponto de partida opcional para `~/.codex/AGENTS.md`. Antes de criá-lo, confirme que o destino não existe. Se existir, preserve-o integralmente e faça qualquer adaptação manualmente.

Exemplo de uso manual, somente quando o arquivo global ainda não existir:

```bash
cp templates/AGENTS.global.md ~/.codex/AGENTS.md
```

O modelo global deve conter apenas preferências universais. Comandos, arquitetura, convenções e restrições de um repositório pertencem ao `AGENTS.md` local.

## Instalação local

Copie `templates/AGENTS.project.md` para a raiz do projeto e substitua todos os campos entre colchetes por fatos reais:

```bash
cp templates/AGENTS.project.md /caminho/do/projeto/AGENTS.md
```

Confira os comandos no repositório antes de mantê-los no arquivo. Não deixe exemplos fictícios e não sobrescreva um `AGENTS.md` local existente sem revisar o conteúdo.

## Contexto e decisões

Crie `context/` somente para documentos duradouros que sejam realmente consultados. Use `docs/adr/` para decisões arquiteturais, sem transformar nenhuma das duas pastas em um sistema automático de memória.

A precedência deve ser simples: regras globais orientam preferências universais, regras da raiz definem o projeto e regras em subdiretórios especializam somente a área correspondente.

## Codex e delegação

Não distribua configurações externas de agentes. O Codex executa a skill principal e só delega uma investigação ou revisão quando esse recurso estiver disponível e trouxer benefício claro; caso contrário, o próprio Codex executa o procedimento. Não crie `explorer.toml`, `reviewer.toml` ou outro orquestrador próprio.
