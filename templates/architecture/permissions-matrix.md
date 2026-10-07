# Permissions matrix

Document app/item access separately from entity, row, field and connected-source permissions.

| Persona | App/item access | Entity | Read | Create | Update | Delete | Row policy | Restricted fields | Source permission |
|---|---|---|---:|---:|---:|---:|---|---|---|
| Example user | Run and interact | Request | Yes | Yes | Own | No | Subject equals owner | InternalNotes | N/A |

## Negative test cases

- [ ] User cannot read another user's restricted records.
- [ ] User cannot update or delete outside policy.
- [ ] Restricted fields are not returned.
- [ ] Anonymous access is denied unless approved.
- [ ] Administrative access is separately validated.
