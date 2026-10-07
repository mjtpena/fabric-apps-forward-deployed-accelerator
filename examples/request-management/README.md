# Reference proof: request management

Use this as the first end-to-end validation of the accelerator.

## Scenario

Employees submit internal requests. Users can view their own requests, approvers can act on assigned requests, and administrators manage categories.

## Baseline-only scope

- Fabric SSO
- App-owned Rayfin-managed data
- Generated typed client
- Static frontend hosting
- No connectors
- No functions
- No storage
- No external APIs
- No custom identity provider

## Suggested entities

- `Request`
- `Category`
- `ApprovalDecision`

Use UUID identifiers and explicit ownership/assignment fields. Define authorization rules and test negative cases before adding dashboard polish.

## Proof steps

1. Scaffold using the official generator.
2. Implement source-controlled models and permissions.
3. Build and test locally.
4. Deploy to the development workspace.
5. Verify Entra sign-in and authorization.
6. Apply one additive schema change.
7. Release to production after dry-run and approval.
8. Redeploy a prior non-destructive release.
9. Capture evidence and reusable lessons.
