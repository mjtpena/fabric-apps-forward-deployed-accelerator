# Request management specification outline

## User journeys

- Employee creates a request.
- Employee views only permitted requests.
- Approver reviews an assigned request.
- Approver records an approve/reject decision.
- Administrator manages categories.

## Acceptance criteria

- AC-01: Authenticated employees can create valid requests.
- AC-02: Employees cannot read another employee's restricted request.
- AC-03: Approvers can act only within the approved assignment policy.
- AC-04: Unauthorized mutations are rejected.
- AC-05: Loading, empty, validation, error and unauthorized states are visible.
- AC-06: No credentials, tokens or mock production data are committed.
- AC-07: Development and production deployments use separate workspaces.
