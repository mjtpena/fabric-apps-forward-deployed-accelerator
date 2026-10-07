---
applyTo: "**/*.{ts,tsx,yml,yaml,json}"
---

# Fabric Apps instructions

- Use TypeScript for backend data models.
- Treat Rayfin models as the source of truth for app-owned schema.
- Do not modify the generated SQL schema directly.
- Use a UUID `id` convention and explicit joining entities where needed.
- Use generated GraphQL/type-safe clients for app-owned data.
- Deployed authentication uses Fabric SSO/Entra; do not add custom providers.
- Select only required fields and paginate large result sets.
- Keep connectors and experimental services behind documented capability gates.
- Pin compatible Rayfin package versions together.
