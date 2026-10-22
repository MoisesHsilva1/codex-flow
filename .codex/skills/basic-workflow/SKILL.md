---
name: basic-workflow
description: "Coordena tarefas de desenvolvimento pelo ciclo Explore, Plan, Execute, Review/Test e Conclude, preservando decisões humanas e evitando orquestração própria."
---

# Basic Development Workflow

Use esta skill para bugs, pequenas funcionalidades, refatorações e mudanças de documentação que exigem entendimento antes da edição.

## Gatilho

Ative quando o usuário pedir para investigar, corrigir, implementar, refatorar ou validar uma mudança em um projeto. Não use para responder perguntas puramente conceituais sem tocar no projeto.

## Limites

- Não invente requisitos, contratos, contexto de negócio ou comandos.
- Não crie um orquestrador, estado paralelo ou protocolo próprio de agentes.
- Não delegue por padrão: delegação é opcional e só vale para investigação independente ou revisão delimitada.
- Decisões com impacto em arquitetura, dados, segurança, contratos ou escopo devem ser apresentadas ao usuário.
- Se a delegação não estiver disponível ou não reduzir risco/tempo, execute a etapa no agente principal.

## Procedimento

1. **Explore**: leia as instruções aplicáveis, identifique o repositório, estado do Git, entradas, dependências, testes e arquivos relevantes. Separe observado, definido, inferido, recomendado e pendente.
2. **Planeje**: formule um plano curto com arquivos afetados, riscos, critérios de conclusão e validações. Pare para decisão humana quando houver uma escolha material não definida.
3. **Execute**: faça alterações incrementais, focadas e reversíveis, preservando comportamento fora do escopo.
4. **Review/Test**: revise o diff, execute testes e verificações adequadas ao risco, corrija falhas e confirme que não há regressões óbvias.
5. **Conclua**: informe o resultado, arquivos alterados, validações executadas, limitações e qualquer próximo passo pendente.

## Delegação condicional

Quando houver benefício claro, forneça ao papel delegado um brief com objetivo, escopo, arquivos permitidos, perguntas e formato de saída. Exija referências de arquivo e linha ou evidência reproduzível. O agente principal continua responsável por integrar, decidir e validar o resultado.

Não assuma que `explorer.toml`, `reviewer.toml` ou qualquer configuração de multi-agent seja suportada pelo Codex. A delegação deve usar somente capacidades realmente disponíveis no ambiente Codex em execução.

## Saída esperada

Ao final, deixe explícitos:

- objetivo atendido e escopo efetivamente alterado;
- decisões tomadas e premissas ainda abertas;
- evidências da revisão e dos testes;
- falhas ou bloqueios remanescentes.
