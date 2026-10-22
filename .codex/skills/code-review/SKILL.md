---
name: code-review
description: "Revisa mudanças por severidade, evidência, regressões, contratos, segurança e cobertura de validação, sem editar o patch revisado."
---

# Code Review

Use esta skill para revisar um diff, commit, branch ou conjunto de arquivos antes da integração.

## Gatilho

Ative quando o usuário pedir revisão, quando uma mudança precisar de uma segunda leitura ou na etapa Review/Test do Basic Development Workflow.

## Limites

- A revisão é somente leitura: não altere o patch sob análise.
- Priorize defeitos concretos e riscos verificáveis; não imponha preferências estilísticas sem impacto.
- Não declare aprovação sem checar testes e contratos relevantes.
- Separe achados de segurança, correção, compatibilidade, testes e manutenção.

## Procedimento

1. Leia instruções aplicáveis e entenda o objetivo da mudança.
2. Inspecione o diff completo e os arquivos adjacentes necessários para entender contratos.
3. Verifique caminhos de sucesso, erro, entradas inválidas, compatibilidade, segurança e efeitos colaterais.
4. Confira testes existentes, testes ausentes e comandos de validação executados.
5. Ordene achados por severidade: bloqueante, alta, média, baixa ou nenhum achado.

## Formato de saída

Para cada achado informe severidade, arquivo/linha, comportamento afetado, evidência, impacto e correção sugerida. Termine com validações executadas, dúvidas e uma conclusão explícita: aprovar, aprovar com ressalvas ou solicitar alterações.
