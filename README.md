# Mathias Steinbach | AI & Automation Solutions

**Problemdefinition · Business Analysis · Technical Implementation · Evidence-led Evaluation**  
Essen / NRW · [LinkedIn](https://www.linkedin.com/in/mathias-steinbach-513869446/) · mathias.steinbach@icloud.com

I translate operational and technical problems into **testable requirements, implementable system designs and defensible decisions**. My work connects problem discovery, process and data analysis, AI-assisted implementation, systems integration and evidence-based evaluation.

**Target:** Junior / Associate roles in AI & Automation Solutions, AI Implementation, Technical Business Analysis and Solutions Consulting. I am looking for a role that connects real business processes with technical delivery and allows close collaboration with customers and engineering teams.

**[Recruiter overview: role, evidence and selected work samples →](https://sfs-labs.github.io/ai-knowledge-ops-lab/recruiter.html)**

---

## How I work: from problem to decision

| Stage | Work performed | Observable output |
|---|---|---|
| **1. Discover** | Clarify the actual problem, user context, process, constraints and source data. | Problem statement; known facts, assumptions and unknowns. |
| **2. Translate** | Convert the problem into requirements, dimensions, measurable criteria and acceptance conditions. | Requirements and evidence contract; baseline and decision criteria. |
| **3. Design** | Define data flows, interfaces, system boundaries, control points and failure handling. | Architecture and process logic that engineering work can use. |
| **4. Deliver** | Coordinate AI-assisted implementation, integrate APIs/workflows/storage and inspect changes. | Executable workflow or prototype with traceable implementation decisions. |
| **5. Evaluate** | Reproduce tests, compare alternatives, inspect failure costs and state what the evidence does not establish. | Verification record, risk assessment and Go/No-Go decision. |

## Selected evidence

The projects below use the same review structure. They are selected because they show the work behind a solution, not because they share a technology stack.

### 1. AI Knowledge Ops Lab — service intake and routing

- **Problem:** Structure incoming service requests and route them without hiding urgent cases behind a better aggregate accuracy score.
- **Analysis:** Separated request category from urgency; compared LLM-only, deterministic rules and a hybrid policy; investigated false-high and missed-high cases.
- **Decision:** Retain human review for conflicts and do not treat higher overall accuracy as sufficient evidence for operational release.
- **Implementation:** Local Qwen inference → n8n → Python API → SQLite, with separate review/approval and explicit failure paths.
- **Verification:** 36 real local model inferences; a real n8n→LLM→SQLite end-to-end run including reject, restart and fail-closed; 124 Python tests in recorded CI runs.
- **Boundary:** The 32-case routing pilot is synthetic and post-hoc; no customer deployment or measured ROI. A separate 96-case NLBSE evaluation is a different experiment and must not be merged with the urgency pilot.
- **Inspect:** [Decision brief](https://github.com/SFS-Labs/ai-knowledge-ops-lab/blob/main/showcases/internal-service-intake/DECISION_EVIDENCE_BRIEF.md) · [Research design](https://github.com/SFS-Labs/ai-knowledge-ops-lab/blob/main/showcases/internal-service-intake/RESEARCH_DESIGN.md) · [Repository](https://github.com/SFS-Labs/ai-knowledge-ops-lab)

### 2. Tender Intelligence — product hypothesis and stop decision

- **Problem:** Determine whether adding AI-supported source and change intelligence improves decisions based on EU public procurement notices.
- **Analysis:** Integrated the official TED Search API, tested document/version signals and compared two processing paths on the same prepared evidence with a predefined 16-point rubric.
- **Decision:** The SFS path showed no evidenced quality advantage; commercial development was paused rather than presenting a negative result as success.
- **Implementation:** Modular JavaScript service on Cloudflare Workers, TED API integration, deterministic normalization and a source-aware Decision Brief.
- **Verification:** Four model calls; both arms returned 32/32 correct facts, while expected source references supported 26/32 baseline answers and 25/32 SFS answers.
- **Boundary:** Two runs per arm, one procurement procedure, preprocessed source facts; no general performance claim, customer ROI or product-market fit.
- **Inspect:** [Decision log](https://github.com/SFS-Labs/tender-intelligence-case-study/blob/main/docs/DECISION-LOG.md) · [Methodology](https://github.com/SFS-Labs/tender-intelligence-case-study/blob/main/docs/METHODOLOGY.md) · [Repository](https://github.com/SFS-Labs/tender-intelligence-case-study)

### 3. SFS Genomics — data integration and evidence controls

- **Problem:** Turn a large consumer SNP-array export into a persistent, authenticated and scientifically bounded research interface from an iPhone-first workflow.
- **Analysis:** Separated raw genotype calls, public GWAS associations, Ensembl reference-population LD and clinical endpoints; defined checks for build, alleles, strand, linkage and evidence sufficiency.
- **Decision:** Abstain when reference or study evidence is incomplete; do not convert associations or successful storage into clinical conclusions.
- **Implementation:** Mobile parser and staged upload → 256 EU Cloudflare D1 partitions → OAuth-protected remote MCP interface and typed tools.
- **Verification:** 607,051 accepted SNP calls reconciled across 256 partitions; recorded authenticated client calls; OAuth/PKCE/DCR checks and a five-locus reference-validation pilot.
- **Boundary:** Not a clinical diagnostic or validated personal risk model; only five reference loci in the bounded pilot.
- **Inspect:** [Engineering case study](https://sfs-labs.gitbook.io/sfs-labs-docs/ai-docs/featured-engineering-project-sfs-genomics/sfs-genomics) · [Repository](https://github.com/SFS-Labs/sfs-genomics)

### 4. SFS Education Funding — evidence and eligibility architecture

- **Problem:** Funding information is distributed across source sites and documents; a discovered item must not be mistaken for a verified programme or personal eligibility.
- **Analysis:** Separated URL discovery, document retrieval/versioning, claim extraction, reviewed rules and programme verification; missing facts remain Unknown.
- **Decision:** Do not mark a candidate eligible without verified source claims and reviewed requirements.
- **Implementation:** Six-domain collection pipeline, persistent URL queue, versioned document records, relational evidence model, three-valued rules and seven OAuth-gated MCP tools.
- **Verification:** Historical 28 October checkpoint: 16,088 tracked URLs, 725 documents, 353 candidates, 2,025 source-claim records and 15 automated tests; internal deployed protocol checks returned HTTP 200.
- **Boundary:** Zero verified programmes at that checkpoint; catalogue incomplete; an authenticated ChatGPT/iOS invocation was not confirmed.
- **Inspect:** [Public case study](https://sfs-labs.gitbook.io/sfs-labs-docs/ai-docs/featured-engineering-project-sfs-education-funding/sfs-education-funding).

### 5. POINCARÉ — external, scope-limited technical review

- **Problem:** Examine a Solidity custom-curve hook against agreed manipulation, liquidity-accounting and configuration risks.
- **Analysis:** Reviewed seven first-party Solidity files (~1,298 LOC) and independently reproduced the original Foundry test suite.
- **Decision:** Reported two Low findings and eight notes with stated scope and evidence; did not present the work as a comprehensive audit.
- **Implementation:** Delivered actionable findings and reviewed the developer's remediation changes at source level.
- **Verification:** 222 original tests reproduced on the pinned source; nine remediation commits across 26 changed files inspected.
- **Boundary:** The developer-reported revised test suite was not independently rerun; no production-security guarantee.
- **Inspect:** [Review evidence](https://github.com/SFS-Labs/security-reviews/blob/main/README.md).

## Professional context

- **Technical Onboarding Support**, Dr. Schengber & Friends GmbH (working student, remote; since 07/2026): analyse and resolve technical user problems, isolate causes and explain solutions.
- **Independent online retail and reselling** (since 11/2022): sourcing and price assessment, customer contact, complaints and operational fulfilment.
- **B.Sc. Finance & Capital Markets**, TH Köln (ongoing).

## Attribution and verification

I define the problem framing, requirements, technical boundaries, hypotheses, decision criteria and acceptance evidence. Implementation is AI-assisted; I review and verify the resulting work through code inspection, test design, CI and documented limits. I do **not** claim that every code line was written manually. I distinguish implemented, tested, observed in operation and still unverified.

## Roles where this evidence is relevant

- Junior / Associate Solutions Consultant — AI & Automation
- Junior IT Consultant — Process Automation & Customer Advisory
- Junior AI / GenAI Implementation Consultant
- Technical Business Analyst — AI, Data or Automation
- Junior Technical Solutions Engineer / Integration Consultant
- Junior AI Transformation or Process Automation Consultant, where the role includes hands-on delivery

The strongest fit is a position that combines business problem analysis, requirements, technical integration and evaluation — not a role limited to either slide-only strategy or isolated code production.
