# Copilot instructions

Read these files before editing:

1. `accelerator/constitution.md`
2. `accelerator/compatibility.yml`
3. The active feature specification and plan
4. Relevant instructions under `.github/instructions/`

Rules:

- Inspect the repository and actual schemas before proposing changes.
- Never invent fields, APIs, Fabric item IDs or environment values.
- Make one coherent change at a time.
- Explain the plan before editing for non-trivial work.
- Do not add mock production data, credentials, tokens or a second authentication flow.
- Do not bypass generated Rayfin clients without an approved ADR.
- Do not enable connectors, functions or storage without a successful capability assessment.
- Modify app-owned schemas only through source-controlled TypeScript models.
- Prefer additive schema changes.
- Run available build, lint, test and browser checks.
- Report evidence against every acceptance criterion.
- Ask before destructive changes, `--force`, dependency replacement or broad refactoring.
