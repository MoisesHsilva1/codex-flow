---
name: verification-before-completion
description: "Confirma com evidências que uma mudança realmente está pronta antes de reportar conclusão."
---

# Verification Before Completion

Use antes de concluir qualquer implementação, correção, refatoração ou documentação que altere o repositório.

## Procedimento

1. Releia o pedido e os critérios de conclusão; não substitua um requisito por uma impressão de que o diff parece correto.
2. Revise o diff e confirme que cada arquivo alterado pertence ao escopo.
3. Execute os testes, lint, build, validações manuais ou comandos equivalentes que o projeto indicar.
4. Leia a saída real dos comandos e investigue falhas; não trate um comando não executado como aprovado.
5. Confira o estado final e reporte separadamente o que foi verificado, o que não foi possível verificar e os riscos residuais.

## Limites

- Não diga “está funcionando” sem uma evidência correspondente.
- Não esconda uma falha sob uma validação alternativa sem explicar a diferença.
- Não marque uma limitação ambiental como defeito do código sem evidência.
