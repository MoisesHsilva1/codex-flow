---
name: test-strategy
description: "Define e executa a estratégia de testes para uma mudança quando cobertura, regressão, TDD, mocks ou escolha do nível de teste exigem decisão."
---

# Test Strategy

Use quando a mudança precisa de novos testes, quando uma falha expõe uma lacuna de cobertura ou quando não está claro qual nível de teste oferece confiança suficiente.

## Limites

- Teste comportamento e contratos, não implementação incidental.
- Não imponha TDD quando o projeto ou a tarefa não tiver uma seam testável; registre a alternativa escolhida.
- Não aumente cobertura apenas para melhorar uma métrica.
- Não aceite testes que passam sem demonstrar o comportamento ou que dependem de ordem, tempo real ou rede sem necessidade.

## Procedimento

1. Identifique o comportamento novo ou quebrado, suas entradas, saídas e falhas relevantes.
2. Escolha o nível mínimo que prova o risco: unitário, integração, contrato, end-to-end ou uma combinação.
3. Para bug, escreva primeiro uma regressão que falhe com o sintoma reproduzido quando isso for possível.
4. Mantenha testes determinísticos, isole dependências externas e use dados representativos.
5. Rode o teste focado, depois a suíte relacionada e as verificações gerais do projeto.

## Saída esperada

Informe a matriz comportamento → teste, testes criados ou ajustados, comandos executados, resultado e lacunas que permanecem.
