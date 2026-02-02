---
title: "The Five Fields"
date: 2026-01-28
summary: "The technical specification. Five fields populated or execution blocked."
labels: ["Technical", "Specification", "Implementation"]
tags: ["specification", "five-fields", "ETLB", "technical"]
---

Every system executing an irreversible action must resolve exactly five fields.

Not four. Not six. Five.

If any is missing, execution is blocked.

---

**1. Action**

A state change that cannot be costlessly reversed.

Criteria for irreversibility:
- Third-party intervention required to unwind
- Economic loss exceeds predefined tolerance
- Non-party state is altered
- Downstream autonomous execution triggered
- Non-replicable resources consumed (time, reputation, safety, capital)

The definition is intentionally strict. If in doubt, treat it as irreversible.

---

**2. Executor**

The system performing the action.

Can be:
- Human
- AI
- Hybrid (human-in-the-loop)
- Automated process

Must be logged at execution time. Immutable record.

---

**3. Liability Bearer**

**One—and only one—natural person** who accepts consequence.

Not:
- An organization
- A committee
- A department
- An AI
- A role (e.g., "whoever is on shift")

One natural person. With a name. With legal standing.

---

**4. Scope**

The maximum exposure the bearer accepts.

Must be numerical:
- Maximum financial liability (€, $, etc.)
- Maximum affected entities (persons, accounts, systems)
- Maximum time horizon (hours, days, years)
- Maximum jurisdictional reach

If scope cannot be computed, execution is blocked.

Scope forces risk to be priced before action—not after damage.

---

**5. Timestamp**

The irreversible moment liability crystallizes.

Must be:
- Cryptographically verifiable
- Forensically immutable
- Synchronized (no time ambiguity)

The timestamp is when everything else becomes binding. Before this moment, the liability bearer can withdraw. After this moment, consequence is attached.

---

**The canonical check:**

```
BEFORE irreversible_action:
  REQUIRE action IS defined
  REQUIRE executor IS logged
  REQUIRE liability_bearer IS exactly_one_natural_person
  REQUIRE scope IS numerical AND bounded
  REQUIRE timestamp IS cryptographic AND immutable
  
  IF any UNDEFINED:
    BLOCK execution
    LOG reason
  ELSE:
    BIND liability_bearer TO action AT timestamp
    EXECUTE
    LOG binding
```

---

**That's the whole system.**

No philosophy. No values. No interpretation.

Five fields. Enforce or block.

Everything else is implementation detail.
