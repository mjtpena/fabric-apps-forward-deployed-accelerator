# Release runbook

1. Confirm release commit/tag and approved evidence.
2. Confirm production environment approval and deployment identity.
3. Run build and tests from a clean install.
4. Run `rayfin up --dry-run --verbose` against production.
5. Review schema and permission impact.
6. Deploy without `--force` by default.
7. Execute smoke tests.
8. Observe errors, capacity and user access.
9. Record deployment ID, app URL, time, approver and outcome.
