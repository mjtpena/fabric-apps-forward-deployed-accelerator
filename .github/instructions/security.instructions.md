---
applyTo: "**/*"
---

# Security instructions

- Never commit secrets, tokens, tenant-specific credentials or personal data.
- Distinguish authentication from authorization.
- Test negative authorization cases.
- Grant deployment identities only the required workspace access.
- Validate redirect origins and avoid wildcard production redirects.
- Treat anonymous access as forbidden unless explicitly approved and tested.
- Record threats, mitigations and residual risks.
