# Codex Essentials & Agentic Development

Este guia apresenta os fundamentos para usar o Codex de maneira eficiente, segura e profissional. A leitura segue uma progressão: primeiro você entende o agente, depois aprende a orientá-lo, amplia suas capacidades e só então considera delegação multiagente.

## Módulo 01 — Codex Essentials

### O que é o Codex?

O Codex é um agente de desenvolvimento. Você informa um objetivo e ele pode explorar o repositório, ler instruções, usar ferramentas, editar arquivos e executar verificações quando essas capacidades estão disponíveis e autorizadas.

Um pedido no Codex não precisa descrever cada linha da solução. Ele precisa deixar claro o resultado esperado, o escopo e as restrições importantes.

```text
objetivo → exploração → decisão → alteração → evidência
```

### As peças fundamentais

| Peça | Papel |
|---|---|
| Agente | Observa o ambiente, decide próximos passos e executa um objetivo. |
| Prompt | Pedido atual, com objetivo, escopo, restrições e critérios de sucesso. |
| `AGENTS.md` | Instruções persistentes do projeto e da hierarquia de diretórios. |
| Skill | Procedimento reutilizável para uma tarefa recorrente. |
| MCP | Conexão com serviços ou ferramentas externas. |
| Ferramenta | Capacidade concreta de ler, editar, executar, consultar ou interagir. |

Não confunda as camadas: `AGENTS.md` explica as regras do lugar, uma skill explica como conduzir um tipo de trabalho e um MCP amplia o que o agente consegue acessar.

## Módulo 02 — Instruções, contexto e ferramentas

### `AGENTS.md` deve ser pequeno e verdadeiro

Use o arquivo global para preferências universais e o arquivo da raiz para fatos do projeto: estrutura, comandos, convenções, restrições e validações. Instruções em subdiretórios devem existir somente quando houver uma regra específica daquela área.

Não coloque histórico de conversa, comandos fictícios, tutoriais extensos, secrets ou procedimentos que já vivem em skills.

### Contexto sob demanda

Contexto adicional é documentação versionada, não memória automática. Crie um documento somente quando ele guardar conhecimento duradouro que será consultado novamente. Use ADRs para decisões arquiteturais e não para substituir instruções operacionais.

### Ferramentas e MCPs

Ferramentas locais permitem trabalhar no repositório. MCPs conectam o agente a serviços como GitHub, Context7, Figma, Playwright e OpenAI Docs. Dê ao agente somente o acesso que a tarefa necessita e prefira servidores oficiais e conexões read-only quando possível.

## Módulo 03 — Desenvolvimento agentic

Desenvolvimento agentic é organizar o trabalho para que o agente consiga observar, agir e verificar em ciclos curtos, mantendo a pessoa no controle das decisões materiais.

Um ciclo profissional é:

1. **Explorar:** ler instruções, estrutura, dependências, contratos e testes relevantes.
2. **Planejar:** registrar objetivo, arquivos afetados, riscos e validação.
3. **Executar:** alterar somente o necessário, em passos pequenos.
4. **Revisar e testar:** ler o diff, rodar verificações e investigar falhas.
5. **Concluir:** resumir mudanças, evidências, limitações e próximos passos.

Exemplo de pedido inicial:

```text
Investigue o fluxo de autenticação neste repositório. Leia as instruções aplicáveis,
localize os arquivos e testes envolvidos e reproduza o problema descrito.
Antes de editar, apresente um plano curto com riscos e validação.
Não altere arquivos fora do escopo.
```

O agente deve parar e pedir decisão quando houver ambiguidade relevante de produto, arquitetura, segurança, dados, contrato ou escopo.

## Módulo 04 — Multiagente

Multiagente significa permitir que um agente coordenador delegue tarefas independentes para subagentes. Isso não é necessário para toda tarefa e não deve transformar uma sequência simples em um sistema complexo.

### Quando ajuda

- revisar partes independentes de um diff;
- investigar causas diferentes de uma falha;
- comparar propostas ou documentos;
- pesquisar fontes distintas em paralelo;
- implementar componentes independentes que não compartilham os mesmos arquivos.

### Quando evitar

- tarefas pequenas ou lineares;
- etapas que dependem diretamente umas das outras;
- vários agentes editando o mesmo arquivo;
- quando coordenação custa mais contexto do que economiza;
- quando a execução precisa ser estritamente determinística.

Um brief de delegação deve conter pergunta, escopo, arquivos permitidos, restrições, formato da resposta e referências verificáveis. O agente principal deve reconciliar resultados, remover duplicações e continuar responsável pela conclusão.

## Módulo 05 — Operação profissional e segura

Um agente eficiente também precisa ser previsível e seguro.

### Checklist antes de começar

- O objetivo e o escopo estão claros?
- O `AGENTS.md` aplicável foi lido?
- O MCP ou ferramenta realmente é necessário?
- Existem alterações do usuário que precisam ser preservadas?
- Há uma decisão que precisa de aprovação humana?

### Checklist antes de concluir

- O diff contém somente alterações relacionadas?
- Os testes, lint ou build relevantes foram executados?
- Falhas e limitações foram relatadas com precisão?
- Nenhum secret foi exposto?
- O resumo explica o que mudou e quais evidências existem?

Nunca trate uma ferramenta externa como automaticamente confiável. Revise o mantenedor, as permissões, o transporte, os dados acessíveis e a possibilidade de escrita. Use credenciais separadas e ambientes de desenvolvimento.

## Trilha recomendada

```text
Entender o agente
       ↓
Escrever AGENTS.md pequeno e verdadeiro
       ↓
Usar skills e MCPs com limites claros
       ↓
Trabalhar em ciclos com evidência
       ↓
Delegar somente tarefas independentes
```

## Referências oficiais

- [Skills da OpenAI](https://developers.openai.com/api/docs/guides/tools-skills)
- [OpenAI Docs MCP](https://developers.openai.com/learn/docs-mcp)
- [Conexões MCP](https://developers.openai.com/api/docs/guides/agents-api/tools/mcp)
- [Agentes e runtimes](https://developers.openai.com/api/docs/guides/agents)
- [Multi-agent](https://developers.openai.com/api/docs/guides/responses-multi-agent)
- [Estratégia de `AGENTS.md` e contexto](adr/ADR-002-agents-e-contexto.md)
