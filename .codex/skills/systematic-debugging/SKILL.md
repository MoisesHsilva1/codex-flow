---
name: systematic-debugging
description: "Conduz a depuração por reprodução, hipótese baseada em evidência, experimento mínimo, correção focada e regressão verificada."
---

# Systematic Debugging

Use esta skill para bugs, falhas de teste, erros de build, comportamento inesperado e regressões.

## Gatilho

Ative quando existir um sintoma observável que precise de causa, não apenas uma alteração de comportamento já especificada.

## Limites

- Não aplique correções especulativas sem reproduzir o sintoma ou documentar por que a reprodução não é possível.
- Não misture refatorações oportunistas com a correção.
- Não declare causa raiz apenas porque a alteração faz um teste passar.
- Preserve evidências úteis e não inclua dados sensíveis em logs ou relatórios.

## Procedimento

1. **Reproduza**: capture comando, entrada, ambiente e resultado observado; reduza o caso quando possível.
2. **Mapeie**: trace o caminho do sintoma até as fronteiras relevantes e liste hipóteses ordenadas por evidência.
3. **Teste uma hipótese**: faça o menor experimento que possa confirmá-la ou eliminá-la.
4. **Corrija a causa**: altere apenas o necessário e adicione ou ajuste um teste de regressão.
5. **Verifique**: repita a reprodução, execute a suíte relacionada e faça as verificações gerais do projeto.

## Saída esperada

Relate sintoma reproduzido, causa raiz confirmada, evidência, correção, teste de regressão e cenários que ainda não puderam ser verificados.
