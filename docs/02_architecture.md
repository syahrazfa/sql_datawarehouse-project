## Model Architecture

### Model

This system implements a Medallion Architecture (Bronze–Silver–Gold) to separate ingestion, structural truth, and capital-decision logic into explicit economic layers.

Each layer represents a different truth contract:
| Layer      | Purpose              | Economic Meaning                |
| ---------- | -------------------- | ------------------------------- |
| **Bronze** | Raw ingestion        | Market reality (no assumptions) |
| **Silver** | Structural truth     | Canonical product mechanics     |
| **Gold**   | Capital intelligence | Decision-grade signals          |

---

### Bronze Layer

The Bronze layer contains unaltered market listings scraped from Amazon.

It answers:

> What does the market claim is happening?

No normalization.
No business logic.
No interpretation.

This layer preserves all marketing distortions (pricing formats, category noise, trust inflation) as historical evidence.

---

### Silver Layer

The Silver layer converts market noise into economic structure.

It produces:

- Product taxonomy hierarchy
- Canonical product attributes
- A unified persuasion fact table representing price, discount, trust, and volume mechanics

This layer answers:

> How does this product actually function economically?

---

### Gold Layer

The Gold layer transforms structural truth into decision intelligence.

It derives:

- Margin destruction signals
- Elasticity and trust leverage behavior
- Capital verdicts (Scale / Fix / Kill)

This layer answers:

> Where should capital go — and where must it stop?

Gold outputs are consumed directly by Power BI and investment decision workflows.
