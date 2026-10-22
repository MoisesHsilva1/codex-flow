# Repository Guidelines

## Visão geral

Este repositório é [produto, serviço, biblioteca ou CLI em uma frase].

Objetivo principal: [problema que o projeto resolve].

## Estrutura do projeto

- `[diretório]`: [responsabilidade]
- `[arquivo de entrada]`: [ponto de entrada]
- `[configuração]`: [finalidade]

Antes de criar arquivos, procure uma implementação ou padrão equivalente.

## Comandos

```bash
[comando de instalação]
[comando de desenvolvimento]
[comando de teste]
[comando de lint ou análise estática]
[comando de build]
```

Use os gerenciadores e scripts já configurados. Não invente comandos alternativos.

## Convenções de código

- Linguagem/runtime: [versão observada]
- Formatação: [ferramenta e comando]
- Nomenclatura: [regras observadas]
- Organização: [padrão de módulos/camadas]
- Dependências: [quando adicionar e como atualizar lockfile]
- Erros e logs: [padrão observado]

Preserve convenções existentes antes de introduzir uma nova arquitetura.

## Testes e validação

- Suíte principal: [ferramenta]
- Testes unitários: [local/comando]
- Testes de integração/contrato: [local/comando]
- Validação obrigatória: [comandos reais]

Para bugs, adicione uma regressão quando possível. Leia a saída dos comandos e reporte falhas.

## Planejamento e implementação

Para mudanças que afetam múltiplos arquivos:

1. explore o código e as instruções aplicáveis;
2. apresente arquivos afetados, riscos e validação;
3. implemente em mudanças focadas;
4. revise o diff e valide o resultado.

Decisões de arquitetura, dados, segurança, contratos ou escopo não definidas devem ser apresentadas ao usuário.

## Restrições

- Não altere `[arquivos/diretórios protegidos]` sem autorização.
- Não adicione secrets, credenciais ou valores reais de ambiente.
- Não faça operações destrutivas no Git sem autorização explícita.
- Não misture refatorações não relacionadas à tarefa.

## Contexto adicional

- Contexto duradouro: `[caminho, se existir]`
- Decisões arquiteturais: `docs/adr/`
- Procedimentos reutilizáveis: `[caminho de skills, se existir]`
