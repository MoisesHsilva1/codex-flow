---
name: security-audit
description: "Audita uma mudança ou área do repositório em busca de vulnerabilidades, exposição de segredos e controles de segurança ausentes, sem corrigir automaticamente."
---

# Security Audit

Use quando o usuário pedir auditoria de segurança, quando uma mudança toca autenticação, autorização, secrets, entrada não confiável, serialização, execução de comandos ou dados sensíveis.

## Limites

- A auditoria é read-only; não aplique correções nem faça testes intrusivos sem autorização explícita.
- Não trate padrões ou nomes como prova: trace entrada, validação, transformação, sink e impacto.
- Não copie secrets para relatórios; masque valores e registre somente a localização necessária.
- Diferencie achado confirmado, hipótese e recomendação.

## Procedimento

1. Leia as instruções e o escopo exato da auditoria.
2. Mapeie fronteiras de confiança, dados sensíveis, permissões e dependências relevantes.
3. Procure caminhos de entrada até sinks perigosos: comandos, SQL, HTML, arquivos, rede, logs e credenciais.
4. Verifique controles positivos e negativos: autenticação, autorização, validação, limites, erros e exposição.
5. Classifique cada achado por severidade, evidência, explorabilidade e impacto.

## Saída esperada

Liste achados acionáveis com arquivo/linha, caminho de ataque, pré-condições, impacto, severidade e mitigação sugerida. Termine com áreas não auditadas e conclusão.
