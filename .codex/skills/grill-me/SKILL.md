---
name: grill-me
description: "Entrevista um plano ou design para revelar ambiguidades, decisões ocultas, casos-limite e riscos antes da implementação."
disable-model-invocation: true
---

# Grill Me

Skill invocada manualmente quando a pessoa quer ser questionada com profundidade antes de aprovar um plano, arquitetura ou design.

## Gatilho

Use quando o usuário pedir para “me questionar”, “pressionar o plano”, “grill me” ou revisar uma proposta antes de implementá-la.

## Procedimento

1. Reúna o objetivo, o plano/design atual e as restrições conhecidas.
2. Explore decisões em ordem de dependência: objetivo, usuários, comportamento, dados, contratos, segurança, operação, testes e fora de escopo.
3. Faça uma pergunta por vez, com contexto curto e uma recomendação explícita quando houver uma opção preferível.
4. Quando a resposta puder ser obtida no repositório, investigue o código/configuração antes de perguntar.
5. Registre decisões confirmadas, pendências, riscos aceitos e mudanças necessárias no plano.

## Limites

- Não implemente enquanto houver decisões críticas abertas.
- Não transforme preferências em requisitos sem confirmação.
- Não prolongue a entrevista com perguntas que não mudariam o design ou a implementação.
- Encerre quando as decisões relevantes estiverem resolvidas e peça confirmação de entendimento compartilhado.

## Saída esperada

Entregue um resumo do entendimento acordado, decisões tomadas, perguntas ainda abertas, riscos e alterações sugeridas ao plano/design.
