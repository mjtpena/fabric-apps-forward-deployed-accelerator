# Fabric Apps data-fit assessment

## App-owned data

- [ ] The app owns the transactional data it will write.
- [ ] Schema can be controlled through TypeScript models.
- [ ] UUID identifiers are acceptable.
- [ ] Composite primary keys are unnecessary or can be remodelled.
- [ ] Many-to-many relationships can use explicit join entities.
- [ ] Raw custom SQL is not required through the generated application API.
- [ ] Expected entity count and domain complexity were proven with the pinned version.

## Existing data

- [ ] Existing data is accessed through a validated connector or approved external integration.
- [ ] The design does not duplicate an existing source schema merely to read it.
- [ ] Data ownership, freshness and permissions are documented.

## Decision

`GO | GO_WITH_CONDITIONS | NO_GO`

## Evidence and conditions
