# MCPs recomendados para desenvolvedores

MCP significa **Model Context Protocol**. É um padrão para conectar o Codex a serviços e ferramentas externas por meio de servidores MCP.

Uma skill explica **como trabalhar**. Um MCP disponibiliza **o que o Codex pode acessar ou executar**.

```text
Codex + skill       = procedimento de trabalho
Codex + MCP         = acesso a uma ferramenta ou serviço
Codex + AGENTS.md   = regras do projeto
```

## Curadoria inicial

As prioridades abaixo indicam o quanto o MCP costuma ser útil para um projeto de desenvolvimento. Não instale todos de uma vez: comece pelos que resolvem uma necessidade real.

| MCP | Para que serve | Prioridade |
|---|---|---|
| GitHub | Criar PRs, consultar issues, revisar código e interagir com repositórios | Alta |
| Context7 | Consultar documentação atualizada de bibliotecas e frameworks | Alta |
| Figma | Consultar designs, componentes, variáveis e informações do Figma | Média |
| Playwright | Automatizar navegadores e testar aplicações web | Média |
| OpenAI Docs | Consultar a documentação oficial de OpenAI, Codex e APIs | Alta quando o trabalho envolve OpenAI |

## 1. GitHub MCP Server · Alta

É a recomendação geral para equipes que trabalham com GitHub. O servidor oficial conecta o Codex a repositórios, arquivos, issues, pull requests, Actions e recursos de segurança.

Use para:

- criar, consultar e revisar pull requests;
- localizar código e histórico relacionado a uma issue;
- acompanhar falhas de CI;
- relacionar uma mudança a testes, issues e revisões;
- investigar alertas de segurança do repositório.

No Codex, o servidor remoto pode ser adicionado assim:

```bash
codex mcp add github --url https://api.githubcopilot.com/mcp/
```

Confira a configuração atual no [GitHub MCP Server](https://github.com/github/github-mcp-server). Comece com os conjuntos de ferramentas necessários e limite permissões sempre que possível.

## 2. Context7 MCP · Alta

Context7 busca documentação atualizada e exemplos de código de bibliotecas e frameworks. Ele é especialmente útil quando a versão instalada no projeto não coincide com o conhecimento geral do modelo.

Use antes de implementar ou corrigir algo que dependa de:

- React, Next.js, Vite, Node.js e outros frameworks;
- SDKs de cloud, bancos ou provedores externos;
- APIs que mudam entre versões;
- configuração de ferramentas com documentação extensa.

Instalação automática para Codex:

```bash
npx ctx7 setup --codex
```

Ou instalação local via MCP:

```bash
codex mcp add context7 -- npx -y @upstash/context7-mcp --api-key YOUR_API_KEY
```

Use o [Context7 MCP](https://context7.com/docs/resources/all-clients) para consultar a configuração atual. A chave deve ficar em variável ou configuração segura, nunca no `AGENTS.md` ou no prompt.

## 3. Figma MCP · Média

O Figma MCP leva para o agente informações que normalmente se perdem em uma imagem: componentes, variáveis, layout, estilos e detalhes do design system. Isso ajuda a transformar uma tela em código mais fiel ao projeto.

Use para:

- implementar uma tela a partir de um arquivo Figma;
- consultar componentes e tokens existentes;
- comparar a implementação com o design;
- manter consistência entre design system e código.

O servidor remoto recomendado pelo Figma usa HTTP:

```toml
[mcp_servers.figma]
url = "https://mcp.figma.com/mcp"
```

O login é feito no primeiro acesso. Verifique compatibilidade do cliente, plano e permissões na documentação oficial de [configuração do Figma MCP](https://help.figma.com/hc/en-us/articles/39216419318551-Get-started-with-the-Figma-MCP-server). Trate arquivos de design como dados do projeto e não conceda escrita se apenas leitura for necessária.

## 4. Playwright MCP · Média

Playwright é indicado quando a tarefa depende de uma interface web real. O servidor permite navegar, clicar, preencher formulários e observar o resultado em um navegador.

Use para:

- reproduzir um bug visual ou de interação;
- testar login, checkout e fluxos multi-etapas;
- verificar uma página após uma alteração de UI;
- investigar comportamento responsivo.

Configuração mínima:

```bash
codex mcp add playwright npx "@playwright/mcp@latest"
```

Ou em `~/.codex/config.toml`:

```toml
[mcp_servers.playwright]
command = "npx"
args = ["@playwright/mcp@latest"]
```

Leia o [Playwright MCP](https://github.com/microsoft/playwright-mcp) antes de habilitar recursos adicionais. O servidor pode executar JavaScript no processo; use somente com clientes confiáveis e em ambientes apropriados.

## 5. OpenAI Docs MCP · Alta para projetos OpenAI

O OpenAI Docs MCP é um servidor oficial e somente leitura para pesquisar a documentação de `developers.openai.com`, `platform.openai.com` e `learn.chatgpt.com` diretamente no editor.

Use para:

- consultar a documentação atual de Codex, Responses API, Agents e MCP;
- confirmar parâmetros, limites e exemplos oficiais;
- evitar respostas baseadas em documentação antiga;
- pedir ao Codex que cite a fonte da orientação usada.

Adicione ao Codex:

```bash
codex mcp add openaiDeveloperDocs --url https://developers.openai.com/mcp
```

Ou em `~/.codex/config.toml`:

```toml
[mcp_servers.openaiDeveloperDocs]
url = "https://developers.openai.com/mcp"
```

Para aumentar a confiabilidade, inclua no `AGENTS.md` do projeto uma regra como:

```text
Para dúvidas sobre produtos, APIs ou Codex da OpenAI, consulte primeiro o OpenAI Docs MCP e use a documentação oficial como fonte.
```

Veja a documentação oficial do [OpenAI Docs MCP](https://developers.openai.com/learn/docs-mcp).

## Como escolher

```text
Precisa de código, PRs ou CI?        → GitHub
Precisa da documentação da stack?   → Context7
Precisa transformar design em UI?    → Figma
Precisa interagir com uma página?   → Playwright
Precisa de documentação OpenAI?      → OpenAI Docs
```

Um MCP não substitui testes, revisão ou autorização humana. Ele aumenta o alcance do agente. Antes de ativar qualquer servidor:

1. confirme quem mantém o repositório;
2. leia quais ferramentas serão expostas;
3. prefira acesso somente leitura no primeiro teste;
4. use credenciais separadas e com escopo mínimo;
5. não inclua secrets no prompt ou no `AGENTS.md`;
6. valide em um projeto de desenvolvimento;
7. fixe versões quando a reprodutibilidade for importante.

## MCP, skill e `AGENTS.md` juntos

Um setup simples pode combinar as três camadas:

```text
AGENTS.md  → "neste projeto, rode estes comandos e preserve estes contratos"
Skill      → "para depurar, reproduza antes e registre a causa raiz"
MCP        → "você pode consultar GitHub, docs, navegador ou design"
```

Comece com um servidor, faça uma tarefa pequena e observe se ele realmente reduz trabalho manual. Só depois adicione outro.
