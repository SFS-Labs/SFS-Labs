<img src="https://raw.githubusercontent.com/SFS-Labs/SFS-Labs/main/branding/sfs-lockup-light.svg" width="540" alt="SFS.Labs — Applied AI · Automation · Technical Research" />

# Mathias Steinbach | AI & Automation Solutions

**Problem- und Prozessanalyse · Anforderungs- und Messkonzeption · Systemdesign · technische Integration · Evaluation**  
Technical Onboarding Support (Werkstudent) · Essen / NRW · [LinkedIn](https://www.linkedin.com/in/mathias-steinbach/) · [E-Mail](mailto:mathias.steinbach@icloud.com)

I analyse technical and operational questions, define testable requirements, connect data and software interfaces, and assess results against explicit criteria. My focus is implementing AI and automation in businesses. I want to take responsibility from clarifying technical requirements through rollout and involve the people who will use the solution so they can understand and help shape technical decisions. The examples below link the actual work, observed results and primary records.

[**Project overview**](https://sfs-labs.github.io/ai-knowledge-ops-lab/recruiter.html) · [**Technical documentation**](https://github.com/SFS-Labs/SFS-Labs/blob/main/case-studies/README.md) · [**Source repositories**](https://github.com/SFS-Labs)

## Selected work

### HubSpot–Stripe · billing reconciliation and cost modelling

I built a read-only Python workflow that matches HubSpot payment obligations to Stripe invoices and flags exceptions for Finance review. At six deals per day and 5% simulated exceptions, the model showed 14 hours 27 minutes less review work per 100 business days than the spreadsheet-based process. The net value of usable staff time after running costs was €225.22. At 28% simulated exceptions the time advantage reversed.

[Case study and technical evidence](https://sfs-labs.github.io/ai-knowledge-ops-lab/hubspot-stripe.html)

### AI Knowledge Ops Lab · service intake, integration and testing

**Built and executed:** A local Qwen → n8n → Python API → SQLite workflow with approval, rejection, restart and fail-closed paths. Recorded 36 real local model inferences and 135 Python tests (rechecked 10 November 2026).

**Assessed:** A synthetic, retrospective 32-case routing pilot achieved 22/32 correct classifications in the hybrid path but missed 5/9 urgent cases. A 10 November repeat on the same 96 genuine NLBSE issues as the earlier v2 run achieved 55/96 with Qwen v2 versus 46/96 for a keyword baseline; the paired uncertainty interval includes no difference. Human review remains necessary for critical cases.

[Executed end-to-end test](https://github.com/SFS-Labs/ai-knowledge-ops-lab/actions/runs/42828304593/job/129871453222) · [Decision brief](https://github.com/SFS-Labs/ai-knowledge-ops-lab/blob/main/showcases/internal-service-intake/DECISION_EVIDENCE_BRIEF.md) · [NLBSE retest](https://github.com/SFS-Labs/ai-knowledge-ops-lab/actions/runs/42827473405/job/129868488355) · [Repository](https://github.com/SFS-Labs/ai-knowledge-ops-lab)

### Tender Intelligence · source integration and product evaluation

**Built:** A Cloudflare Workers prototype using the official EU TED Search API, deterministic source processing and a documented evaluation design.

**Assessed:** Four controlled model calls, two per arm. Both paths returned 32/32 correct prepared facts; the expected source references were present for 26/32 baseline answers and 25/32 SFS answers. The comparison did not support a quality advantage, so further commercial development was paused.

[Decision log](https://github.com/SFS-Labs/tender-intelligence-case-study/blob/main/docs/DECISION-LOG.md) · [Methodology](https://github.com/SFS-Labs/tender-intelligence-case-study/blob/main/docs/METHODOLOGY.md) · [Aggregate results](https://github.com/SFS-Labs/tender-intelligence-case-study/blob/main/data/ab-aggregate.json) · [Repository](https://github.com/SFS-Labs/tender-intelligence-case-study)

### SFS Genomics · mobile data pipeline and authenticated MCP

**Built and checked:** An iPhone-first parser and import flow, EU Cloudflare D1 storage, OAuth-protected MCP access and selected GWAS/Ensembl research integrations. Reconciled **607,051 accepted SNP calls in 256 persistent partitions**, recorded authenticated tool calls and performed a five-locus reference-validation pilot.

**Scope:** Engineering and bounded reference checks, not clinical diagnosis, independent laboratory confirmation or validated personal risk prediction.

[Engineering record](https://github.com/SFS-Labs/sfs-genomics/blob/main/genomics/PORTFOLIO.md) · [Scientific validation protocol](https://github.com/SFS-Labs/sfs-genomics/blob/main/genomics/SCIENTIFIC_VALIDATION_PROTOCOL.md) · [Repository](https://github.com/SFS-Labs/sfs-genomics)

## Additional evidence

**[SFS Education Funding](https://github.com/SFS-Labs/SFS-Labs/blob/main/case-studies/education-funding.md)** — Designed source and claim provenance, versioned document records, three-valued eligibility rules and seven bounded MCP tools. The historical 28 October checkpoint contained 16,088 URLs, 725 documents and 353 candidates, but **zero verified funding programmes**.

**[POINCARÉ external Solidity review](https://github.com/SFS-Labs/SFS-Labs/blob/main/security-review/case-studies/poincare-2026.md)** — Reviewed a pinned seven-file scope, independently reproduced 222 original Foundry tests, documented two Low findings and eight notes, and inspected nine subsequent developer remediation commits across 26 files. Revised-branch tests were not independently rerun.

## How the work connects

| Competency | Demonstrated application |
| --- | --- |
| **Discover · Problem and process analysis** | Separate request category, urgency, observations and assumptions; identify falsifiable questions. |
| **Translate · Requirements and measurement** | Specify baselines, acceptance checks, error costs and source quality criteria. |
| **Design · Architecture and integration** | Connect APIs, workflows, authentication, storage and controlled tool interfaces. |
| **Deliver · Implementation and verification** | Bring AI-assisted components into executable systems; test normal and negative paths. |
| **Evaluate · Evidence and decisions** | Compare alternatives, examine counterevidence and document when not to proceed. |

The sequence **Discover → Translate → Design → Deliver → Evaluate** is iterative: results can change the initial question or architecture. Individual projects demonstrate different parts of this work.

## Professional background and attribution

- **Technical Onboarding Support**, Dr. Schengber & Friends GmbH — working student, remote, since 07/2026. I resolve technical user issues, often during the initial conversation, and explain how the fix works so users can get back to their work.
- **Independent online retail and reselling**, since 11/2022. Price assessment, sourcing, customer communication, complaints and fulfilment.
- **B.Sc. Finance & Capital Markets**, TH Köln — ongoing.

I take responsibility for documented problem framing, requirements, evaluation criteria, architectural decisions and review of results. Implementation and portions of the analysis are **AI-assisted**.
