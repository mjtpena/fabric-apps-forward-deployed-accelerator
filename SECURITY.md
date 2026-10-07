# Security Policy

## Reporting

Do not open public issues for suspected vulnerabilities. Report them privately to the repository owner with reproduction steps, affected versions and impact.

## Required controls

- Never commit tenant IDs, client secrets, tokens, workspace secrets or generated local environment files.
- Production deployments require a protected GitHub Environment.
- Use a dedicated deployment service principal scoped to the target Fabric workspace.
- Rotate client secrets and document the rotation procedure.
- Treat `rayfin up --force` as a destructive operation requiring named approval and a recovery plan.
- Test authentication and authorization independently.
- Generated code is subject to the same review requirements as human-written code.
