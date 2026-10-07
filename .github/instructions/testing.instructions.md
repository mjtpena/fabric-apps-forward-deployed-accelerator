---
applyTo: "**/*.{test,spec}.{ts,tsx,js,jsx}"
---

# Testing instructions

Tests must cover successful, loading, empty, error and unauthorized behaviour where relevant. Authorization tests must prove both permitted and denied actions. Avoid brittle implementation-detail assertions. Link tests to acceptance criteria using IDs such as `AC-01`.
