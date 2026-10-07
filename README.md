# Fabric Apps Forward-Deployed Accelerator

An opinionated, evidence-driven accelerator for taking a Microsoft Fabric Apps idea from customer discovery to controlled production deployment.

> Status: early accelerator baseline. Fabric Apps and some Rayfin capabilities may be preview or experimental. Run the readiness checks in the target tenant before committing to an architecture.

## Purpose

This repository combines:

- Forward Deployed Engineering for customer outcomes and field feedback.
- GitHub Spec Kit for durable specifications, plans, tasks and convergence.
- Selected Hypervelocity Engineering patterns for research, planning, implementation and review.
- The official Rayfin scaffold and CLI for Fabric Apps.
- GitHub Copilot instructions, agents, prompts and review gates.
- GitHub Actions for validation and controlled deployments.

## Lifecycle

`Discover -> Assess fit -> Define MVV -> Specify -> Plan -> Build -> Review -> Deploy -> Operate -> Generalise`

## Quick start

### 1. Check prerequisites

PowerShell:

```powershell
./scripts/doctor.ps1
```

Bash:

```bash
./scripts/doctor.sh
```

### 2. Generate a project

```powershell
./scripts/scaffold.ps1 -ProjectName request-management -WorkspaceName fabric-app-dev
```

The script invokes the official Rayfin scaffold and overlays this accelerator's engineering assets. It does not maintain a fork of the Rayfin starter.

### 3. Complete the fit gates

Before implementation, complete:

- `templates/architecture/data-fit-assessment.md`
- `templates/architecture/identity-fit-assessment.md`
- `templates/architecture/capability-assessment.md`
- `templates/engagement/minimum-viable-value.md`

### 4. Use the agent workflow

1. `fabric-fde-lead` for discovery, MVV and specification readiness.
2. `fabric-app-builder` for one bounded implementation task.
3. `fabric-app-reviewer` for independent quality and production review.

### 5. Validate

```powershell
./scripts/validate-project.ps1 -ProjectPath .
```

### 6. Deploy

- Pull requests run validation only.
- Main may deploy to a development workspace.
- A release tag triggers the production workflow, subject to GitHub Environment approval.
- Destructive schema changes require a separate manual approval and recovery plan.

## Supported baseline

- TypeScript data models.
- Rayfin-managed SQL data.
- Generated GraphQL API and typed client.
- Microsoft Entra SSO for deployed applications.
- Static frontend hosting.
- Local build and test.
- Separate development and production workspaces.
- Service-principal GitHub Actions deployment.

## Gated capabilities

Connectors, functions and storage must not be assumed available. Enable them only after a capability probe succeeds in the intended tenant, region and workspace. Record the result using `templates/architecture/capability-assessment.md`.

## Non-goals for v1

- Replacing GitHub Spec Kit.
- Forking Rayfin.
- Depending on all of HVE Core.
- Fully autonomous production deployment.
- Automatic rollback of destructive database changes.
- Supporting custom production identity providers.

## Reference implementation

See `examples/request-management/README.md` for the recommended first proof: a small internal request and approval application using only baseline Fabric Apps capabilities.

## Source material

- Fabric Apps documentation: <https://learn.microsoft.com/fabric/apps/>
- Rayfin repository: <https://github.com/microsoft/rayfin>
- Rayfin known limitations: <https://rayfin.ai/docs/reference/known-limitations>
- GitHub Spec Kit: <https://github.com/github/spec-kit>
- HVE Core: <https://github.com/microsoft/hve-core>
- FDE advisory materials: <https://github.com/anjor/fde-advisory-materials>

Review upstream documentation and the compatibility file before each project because preview capabilities can change.
