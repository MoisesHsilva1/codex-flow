# Repository Guidelines

Este repositório é um serviço ou CLI Rust `[versão]` com Cargo.

## Estrutura do projeto

- `src/main.rs`: entrypoint binário.
- `src/lib.rs`: API da biblioteca.
- `src/bin/`: binários adicionais.
- `tests/`: testes de integração.
- `benches/`: benchmarks, se existirem.
- `Cargo.toml` e `Cargo.lock`: manifesto e versões.

## Comandos

Use `cargo fmt --check`, `cargo clippy --all-targets --all-features -- -D warnings`, `cargo test` e `cargo build`, ajustando aos targets e features declarados.

Não altere o lockfile manualmente.

## Rust e segurança

- Preserve ownership, lifetimes e tratamento explícito de `Result`/`Option`.
- Evite `unwrap`/`expect` em produção sem justificar o invariant.
- Mantenha módulos pequenos e APIs públicas documentadas.
- Respeite async runtime, cancelamento e concorrência existentes.
- Não inclua secrets ou chaves privadas no repositório.
