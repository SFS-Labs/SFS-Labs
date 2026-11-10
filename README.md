# Mathias Steinbach | AI & Automation Solutions

**Problem- und Prozessanalyse · Anforderungs- und Messkonzeption · Systemdesign · technische Integration · Evaluation**  
Essen / NRW · [LinkedIn](https://www.linkedin.com/in/mathias-steinbach-513869446/) · mathias.steinbach@icloud.com

I analyze operational and technical problems, turn findings into testable requirements, design data and integration paths, and evaluate implemented solutions against explicit criteria. The selected projects below document **what I have done, what was executed and how it was checked**.

[**Project overview and source evidence**](https://sfs-labs.github.io/ai-knowledge-ops-lab/recruiter.html) · [AI Knowledge Ops](https://github.com/SFS-Labs/ai-knowledge-ops-lab) · [Tender Intelligence](https://github.com/SFS-Labs/tender-intelligence-case-study) · [SFS Genomics](https://github.com/SFS-Labs/sfs-genomics)

## Competencies demonstrated in practice

| Competency | Observable work | Evidence |
|---|---|---|
| **Problem and process analysis** | Separate request categories, urgency, process observations and untested assumptions. | [AI Knowledge Ops: decision and research](https://github.com/SFS-Labs/ai-knowledge-ops-lab/blob/main/showcases/internal-service-intake/DECISION_EVIDENCE_BRIEF.md) |
| **Requirements and measurement design** | Define acceptance criteria, baselines, data sources, error costs and falsifiable hypotheses. | [Routing research design](https://github.com/SFS-Labs/ai-knowledge-ops-lab/blob/main/showcases/internal-service-intake/RESEARCH_DESIGN.md); [Tender methodology](https://github.com/SFS-Labs/tender-intelligence-case-study/blob/main/docs/METHODOLOGY.md) |
| **Technical architecture and integration** | Design and connect APIs, workflows, storage, authentication and controlled MCP tools. | [Genomics architecture and observed integration](https://github.com/SFS-Labs/sfs-genomics/blob/main/genomics/PORTFOLIO.md) |
| **Technical delivery and verification** | Integrate an executable Qwen → n8n → Python API → SQLite path; record negative paths, CI and acceptance results. | [Executed service-intake E2E](https://github.com/SFS-Labs/ai-knowledge-ops-lab/actions/runs/42413698800) |
| **Evidence-based evaluation** | Compare alternatives, examine critical class failures and stop development when a hypothesis is unsupported. | [Tender decision log](https://github.com/SFS-Labs/tender-intelligence-case-study/blob/main/docs/DECISION-LOG.md); [NLBSE test](https://github.com/SFS-Labs/ai-knowledge-ops-lab/blob/main/showcases/internal-service-intake/evaluation/NLBSE_REAL_LLM_EVALUATION.md) |

These competencies connect in an iterative working process: **Discover → Translate → Design → Deliver → Evaluate**. Findings can change the initial question, requirements or design. This is a description of my work, not a judgment about a particular employer's role requirements.

## Selected projects — work and results

Three primary examples show analysis and technical execution, product-hypothesis evaluation, and end-to-end integration. Two additional examples document provenance modeling and a bounded external review. Each detailed record links its source and scope.

### 1. AI Knowledge Ops Lab — service intake and routing

- **Problem:** Structure incoming service requests and route them without hiding urgent cases behind a better aggregate accuracy score.
- **Analysis:** Separated request category from urgency; compared LLM-only, deterministic rules and a hybrid policy; investigated false-high and missed-high cases.
- **Decision:** Retain human review for conflicts and do not treat higher overall accuracy as sufficient evidence for operational release.
- **Implementation:** Local Qwen inference → n8n → Python API → SQLite, with separate review/approval and explicit failure paths.
- **Verification:** 36 real local model inferences; a real n8n→LLM→SQLite end-to-end run including reject, restart and fail-closed; 124 Python tests in recorded CI runs.
- **Boundary:** The 32-case routing pilot is synthetic and post-hoc; no customer deployment or measured ROI. A separate 96-case NLBSE evaluation is a different experiment and must not be merged with the urgency pilot.
- **Attribution:** Owner-defined problem framing, urgency-risk challenge and evaluation gates; AI-assisted implementation and review.
- **Inspect:** [Decision](https://github.com/SFS-Labs/ai-knowledge-ops-lab/blob/main/showcases/internal-service-intake/DECISION_EVIDENCE_BRIEF.md) · [Research design](https://github.com/SFS-Labs/ai-knowledge-ops-lab/blob/main/showcases/internal-service-intake/RESEARCH_DESIGN.md) · [E2E run](https://github.com/SFS-Labs/ai-knowledge-ops-lab/actions/runs/42413698800) · [NLBSE evaluation](https://github.com/SFS-Labs/ai-knowledge-ops-lab/blob/main/showcases/internal-service-intake/evaluation/NLBSE_REAL_LLM_EVALUATION.md) · [Repository](https://github.com/SFS-Labs/ai-knowledge-ops-lab)

### 2. Tender Intelligence — product hypothesis and stop decision

- **Problem:** Determine whether adding AI-supported source and change intelligence improves decisions based on EU public procurement notices.
- **Analysis:** Integrated the official TED Search API, tested document/version signals and compared two processing paths on the same prepared evidence with a predefined 16-point rubric.
- **Decision:** The SFS path showed no evidenced quality advantage; commercial development was paused rather than presenting a negative result as success.
- **Implementation:** Modular JavaScript service on Cloudflare Workers, TED API integration, deterministic normalization and a source-aware Decision Brief.
- **Verification:** Four model calls; both arms returned 32/32 correct facts, while expected source references supported 26/32 baseline answers and 25/32 SFS answers.
- **Boundary:** Two runs per arm, one procurement procedure, preprocessed source facts; no general performance claim, customer ROI or product-market fit.
- **Attribution:** Owner-set business hypothesis, A/B acceptance criteria and stop decision; implementation AI-assisted.
- **Inspect:** [Decision](https://github.com/SFS-Labs/tender-intelligence-case-study/blob/main/docs/DECISION-LOG.md) · [Method](https://github.com/SFS-Labs/tender-intelligence-case-study/blob/main/docs/METHODOLOGY.md) · [Aggregate results](https://github.com/SFS-Labs/tender-intelligence-case-study/blob/main/data/ab-aggregate.json) · [Implementation](https://github.com/SFS-Labs/tender-intelligence-case-study)

### 3. SFS Genomics — data integration and evidence controls

- **Problem:** Turn a large consumer SNP-array export into a persistent, authenticated and scientifically bounded research interface from an iPhone-first workflow.
- **Analysis:** Separated raw genotype calls, public GWAS associations, Ensembl reference-population LD and clinical endpoints; defined checks for build, alleles, strand, linkage and evidence sufficiency.
- **Decision:** Abstain when reference or study evidence is incomplete; do not convert associations or successful storage into clinical conclusions.
- **Implementation:** Mobile parser and staged upload → 256 EU Cloudflare D1 partitions → OAuth-protected remote MCP interface and typed tools.
- **Verification:** 607,051 accepted SNP calls reconciled across 256 partitions; recorded authenticated client calls; OAuth/PKCE/DCR checks and a five-locus reference-validation pilot.
- **Boundary:** Not a clinical diagnostic or validated personal risk model; only five reference loci in the bounded pilot.
- **Attribution:** Owner-defined integration constraints, architecture and evidence gates; AI-assisted engineering and regression checks.
- **Inspect:** [Engineering decisions](https://github.com/SFS-Labs/sfs-genomics/blob/main/genomics/PORTFOLIO.md) · [Implementation](https://github.com/SFS-Labs/sfs-genomics) · [Validation evidence](https://github.com/SFS-Labs/sfs-genomics/blob/main/genomics/SCIENTIFIC_VALIDATION_PROTOCOL.md) · [GitBook case](https://sfs-labs.gitbook.io/sfs-labs-docs/ai-docs/featured-engineering-project-sfs-genomics/sfs-genomics)

## Supporting evidence

### 4. SFS Education Funding — evidence and eligibility architecture

- **Problem:** Funding information is distributed across source sites and documents; a discovered item must not be mistaken for a verified programme or personal eligibility.
- **Analysis:** Separated URL discovery, document retrieval/versioning, claim extraction, reviewed rules and programme verification; missing facts remain Unknown.
- **Decision:** Do not mark a candidate eligible without verified source claims and reviewed requirements.
- **Implementation:** Six-domain collection pipeline, persistent URL queue, versioned document records, relational evidence model, three-valued rules and seven OAuth-gated MCP tools.
- **Verification:** Historical 28 October checkpoint: 16,088 tracked URLs, 725 documents, 353 candidates, 2,025 source-claim records and 15 automated tests; internal deployed protocol checks returned HTTP 200.
- **Boundary:** Zero verified programmes at that checkpoint; catalogue incomplete; an authenticated ChatGPT/iOS invocation was not confirmed.
- **Attribution:** Owner-directed semantic evidence states and eligibility limits; AI-assisted engineering.
- **Inspect:** [Public case study](https://sfs-labs.gitbook.io/sfs-labs-docs/ai-docs/featured-engineering-project-sfs-education-funding/sfs-education-funding).

### 5. POINCARÉ — external, scope-limited technical review

- **Problem:** Examine a Solidity custom-curve hook against agreed manipulation, liquidity-accounting and configuration risks.
- **Analysis:** Reviewed seven first-party Solidity files (~1,298 LOC) and independently reproduced the original Foundry test suite.
- **Decision:** Reported two Low findings and eight notes with stated scope and evidence; did not present the work as a comprehensive audit.
- **Implementation:** Delivered actionable findings and reviewed the developer's remediation changes at source level.
- **Verification:** 222 original tests reproduced on the pinned source; nine remediation commits across 26 changed files inspected.
- **Boundary:** The developer-reported revised test suite was not independently rerun; no production-security guarantee.
- **Attribution:** Scope-limited review and findings ownership; AI-assisted documentation and analysis.
- **Inspect:** [Original and remediation review](https://github.com/SFS-Labs/SFS-Labs/blob/main/security-review/case-studies/poincare-2026.md) · [Repository](https://github.com/SFS-Labs/security-reviews).

## Professional context

- **Technical Onboarding Support**, Dr. Schengber & Friends GmbH (working student, remote; since 07/2026): analyse and resolve technical user problems, isolate causes and explain solutions.
- **Independent online retail and reselling** (since 11/2022): sourcing and price assessment, customer contact, complaints and operational fulfilment.
- **B.Sc. Finance & Capital Markets**, TH Köln (ongoing).

## Attribution and verification

I define the problem framing, requirements, technical boundaries, hypotheses, decision criteria and acceptance evidence. Implementation is AI-assisted; I review and verify the resulting work through code inspection, test design, CI and documented limits. I do **not** claim that every code line was written manually. I distinguish implemented, tested, observed in operation and still unverified.

## Search terms for this professional function

- Junior / Associate Solutions Consultant — AI & Automation
- Junior IT Consultant — Process Automation & Customer Advisory
- Junior AI / GenAI Implementation Consultant
- Technical Business Analyst — AI, Data or Automation
- Junior Technical Solutions Engineer / Integration Consultant
- Junior AI Transformation or Process Automation Consultant, where the role includes hands-on delivery

The strongest fit is a position that combines business problem analysis, requirements, technical integration and evaluation — not a role limited to either slide-only strategy or isolated code production.
