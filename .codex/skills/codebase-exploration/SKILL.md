---
name: codebase-exploration
description: "Investiga de forma localizada a estrutura, entradas, dependências, contratos e testes relevantes antes de uma mudança."
---

# Codebase Exploration

Use esta skill antes de implementar uma mudança quando o contexto do repositório não estiver suficientemente claro.

## Gatilho

Ative para localizar a origem de um comportamento, mapear uma área do código, entender dependências ou identificar a estratégia de teste de uma mudança delimitada.

## Limites

- É uma skill de leitura e diagnóstico; não edite arquivos durante a exploração.
- Não faça uma varredura indiscriminada quando a pergunta puder ser respondida por uma área menor.
- Não trate nomes, convenções ou documentação desatualizada como prova sem conferir o código/configuração.
- Não exponha valores de secrets; registre apenas nomes e existência quando necessário.

## Procedimento

1. Leia `AGENTS.md` aplicável, README e configurações do projeto.
2. Confirme a raiz do repositório e o estado do Git.
3. Use busca por nomes e símbolos para encontrar entrypoints, fluxo de dados, dependências e testes relacionados.
4. Siga chamadas somente até o limite necessário para responder à pergunta.
5. Compare documentação, código e testes; registre conflitos e lacunas.

## Saída esperada

Entregue um mapa curto contendo:

- arquivos e símbolos relevantes, com referências verificáveis;
- fluxo observado de entrada até resultado;
- dependências e contratos envolvidos;
- testes existentes e lacunas importantes;
- fatos observados, inferências, riscos e perguntas pendentes.
