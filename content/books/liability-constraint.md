---
title: "The Liability Constraint"
date: 2026-02-02
summary: "A proposal for resolving the accountability vacuum in AI-assisted decision systems."
series: "Position One"
labels: ["Governance", "AI Policy", "Legal Framework"]
tags: ["ETLB", "liability", "accountability", "governance"]
type: "books"
---

## The Problem Regulators Already Know

Every jurisdiction has encountered this scenario:

An automated system makes a consequential decision. A patient is harmed, a financial loss occurs, an infrastructure failure cascades. The affected party seeks accountability.

What happens next is predictable: The technology vendor claims it only provides tools. The deploying organization claims it followed vendor guidance. The operator claims they acted on system recommendations. The system itself has no legal standing.

This is not a bug in existing law. It is a structural gap that widens as autonomous systems become more capable.

Current frameworks were designed for a world where humans made decisions and tools assisted. That world is ending.

---

## The Accountability Vacuum in Mixed-Intelligence Systems

When a human physician prescribes medication, liability is clear.

When an AI system recommends medication and a physician approves it, liability fragments. The physician claims algorithmic influence. The vendor claims advisory limits. The hospital claims it followed industry standards.

This ambiguity is not resolved by:

- Ethics committees (which distribute blame rather than assign it)
- Best-effort compliance (which creates liability theater)
- Organizational accountability (which shields individuals behind corporate shells)
- Post-incident forensics (which occurs after damage is irreversible)

The gap exists because no rule currently requires a single accountable human at the moment an irreversible action is taken.

---

## The Proposed Constraint

**Execution-Time Liability Binding (ETLB):**

> No system SHALL execute an irreversible action unless, at the moment of execution, exactly one natural person is cryptographically and legally bound as the liability bearer for that action, with an explicitly defined scope of exposure.

This is not a guideline. It is a hard constraint designed to be enforceable, auditable, and resistant to diffusion.

---

## What the Constraint Requires

Every system executing an irreversible action must resolve five fields at the moment of execution:

| Field | Definition | Audit Requirement |
|-------|------------|-------------------|
| **Action** | A state change that cannot be costlessly reversed | Must be machine-readable |
| **Executor** | The system (human, AI, or hybrid) performing the action | Logged at execution time |
| **Liability Bearer** | One natural person who absorbs legal consequence | Cryptographic binding |
| **Scope** | Maximum exposure the bearer accepts | Numerical cap (€, affected persons, time horizon) |
| **Timestamp** | The irreversible moment of execution | Forensically verifiable |

If any field is undefined at execution time, the action is blocked.

No exceptions. Exceptions erode constraints.

---

## Defining "Irreversible"

For policy purposes, an action is irreversible if any of the following conditions hold:

1. **Third-party intervention required to unwind** — A court, regulator, or external authority must be engaged to reverse the outcome.

2. **Economic loss exceeds defined tolerance** — The cost of reversal exceeds a predefined threshold acceptable to the system owner.

3. **Third-party state is altered** — Entities not party to the decision experience changed circumstances.

4. **Downstream autonomy triggered** — The action initiates further automated execution chains.

5. **Non-replicable resources consumed** — Time, reputation, safety margins, or capital are expended.

This definition is intentionally conservative. Most systems underestimate irreversibility because optimism is convenient.

---

## Why Existing Approaches Fail

### Ethics Committees
Committees legitimize decisions no one wants to own. When damage occurs, no individual member bears consequence. "We all agreed" becomes synonymous with "no one decided."

### Organizational Liability
Holding a corporation accountable defers consequence to shareholders and contracts, not to the human who made or approved the decision. It severs feedback between action and outcome.

### Post-Hoc Assignment
Assigning liability after an event introduces adversarial incentives: denial, reframing, evidence management. Only execution-time binding collapses these incentives.

### AI as Legal Person
Granting AI systems legal personhood creates entities that can absorb liability without consequence. A fined AI feels nothing. A credited AI gains nothing. Personhood becomes a liability sink, not a governing mechanism.

---

## Why Binding Must Occur at Execution Time

If liability binds before execution, actors have time to hedge, delegate to intermediaries, or create distance from the decision. The binding becomes theater.

If liability binds after execution, actors have time to deny, shift narratives, or restructure responsibility. The binding becomes forensic guesswork.

Only at execution time is the action defined, the stakes real, and the escape routes closed.

This is not philosophy. It is game theory.

---

## Precedent: Domains That Already Converged Here

ETLB does not propose a novel principle. It formalizes what already exists in every high-risk domain that functions:

**Aviation**  
Every flight routes through a single accountable captain. The phrase "the autopilot decided" has no standing.

**Nuclear Operations**  
Every critical action requires a named human sign-off. Automation assists; it never absorbs responsibility.

**Surgical Medicine**  
Every irreversible intervention has a responsible physician of record. Robotic assistance does not transfer accountability.

These domains did not invent this rule through theory. They converged on it because failure demanded clarity.

---

## Policy Implications

If ETLB is adopted as a regulatory requirement, the following consequences follow:

1. **Fully autonomous AI becomes legally constrained** — Any system capable of irreversible action without human binding is non-deployable.

2. **Committees become advisory** — Decision authority concentrates in named individuals who accept scope-defined exposure.

3. **Risk becomes priceable** — Insurers can model liability because a single human anchor exists.

4. **"The system decided" becomes inadmissible** — Courts recognize only natural persons as accountable parties.

5. **AI alignment shifts from values to consequences** — Rather than programming ethics, systems query: "Who is willing to carry this consequence?"

---

## Adoption Pathway

ETLB is designed for adoption through markets and standards, not legislation alone.

1. **Insurers** adopt it first because ambiguity is uninsurable risk. Clear liability structures reduce exposure.

2. **Standards bodies** (ISO, IEEE, NIST) incorporate it because it provides auditable compliance criteria.

3. **Enterprises** architect for it because it reduces legal uncertainty in AI deployment.

4. **Regulators** reference it because it provides enforceable accountability without requiring technical understanding of AI internals.

5. **Governments** adopt it last, codifying what has already become industry standard.

This pathway is intentional. Constraints adopted through market necessity are harder to repeal than regulations passed through political cycles.

---

## The Canonical Standard

For inclusion in regulatory text, technical specifications, or procurement requirements:

> **ETLB-1.0:** A system SHALL NOT execute an irreversible action unless, at the moment of execution, exactly one natural person is cryptographically and legally bound as the liability bearer for that action, with an explicitly defined scope of exposure.

This sentence is designed to be:

- **Airtight** — No ambiguous terms
- **Auditable** — Compliance is machine-verifiable
- **Repeatable** — Same language across jurisdictions
- **Insurance-compatible** — Maps to existing risk frameworks
