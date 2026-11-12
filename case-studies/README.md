# Ausgewählte Arbeiten und überprüfbare Ergebnisse

**AI & Automation Solutions · Problemklärung · Anforderungen · Integration · Evaluation**

Die Projekte dokumentieren konkrete Aufgaben, ausgeführte technische Arbeiten und überprüfbare Entscheidungen. Die verlinkten Ergebnisse sind nach Herkunft und Datum getrennt.

## HubSpot–Stripe-Abrechnungskontrolle

Lesender Rechnungsabgleich, 108 gepaarte Simulationsläufe auf synthetischen Daten und ein reproduzierbares Wirtschaftlichkeitsmodell. [Fallstudie, PDF und technische Nachweise](https://sfs-labs.github.io/ai-knowledge-ops-lab/hubspot-stripe.html).

## Weitere Kernprojekte

### 1. [AI Knowledge Ops Lab](https://github.com/SFS-Labs/ai-knowledge-ops-lab)

**Arbeitsgegenstand:** Unstrukturierte Serviceanfragen in einen kontrollierten technischen Prozess überführen; Kategorie und Dringlichkeit unabhängig prüfen.

**Umsetzung:** Lokale Qwen-Inferenz → n8n → Python-API → SQLite; Review und Approval, Ablehnung, Wiederanlauf, Ausfallpfade. **135 Python-Tests bestanden** auf dem Quell-Commit `8b81da0aaafbe2b0ebb88c5a3a8de3aed54e0a08` (10.11.2026). Erneut nachgewiesen: n8n-/LLM-End-to-End einschließlich 36 echter lokaler Modellaufrufe und Ausfall-zu-manueller-Prüfung.

**Bewertung:** Im separaten retrospektiven Pilot aus **32 synthetischen Fällen** erzielte der Hybrid **22/32** gemeinsame Zuordnungen, übersah aber **5/9 dringliche Fälle**. Daher keine Freigabe für unbeaufsichtigtes Routing. Der Wiederholungslauf vom 10.11.2026 auf denselben **96 echten NLBSE-Issues** wie im früheren v2-Lauf ergab: Qwen v2 **55/96**, Qwen v1 **52/96**, Keyword-Baseline **46/96**, Question-Recall v2 **6/24**. Das gepaarte 95%-Bootstrap-Intervall der v2-Baseline-Differenz **[0; +20,83] Prozentpunkte** umfasst Null; ein gesicherter positiver Vorteil ist nicht nachgewiesen. Die **Volvo-Prozessdaten** (7.554 Fälle, 65.533 Ereignisse, 9.454 Gruppenwechsel) betreffen eine dritte, unabhängige Fragestellung.

[**Direktes E2E-Jobprotokoll**](https://github.com/SFS-Labs/ai-knowledge-ops-lab/actions/runs/42828304593/job/129871453222) · [**135 Tests**](https://github.com/SFS-Labs/ai-knowledge-ops-lab/actions/runs/42827473405/job/129868488060) · [**Neuer NLBSE-Retest**](https://github.com/SFS-Labs/ai-knowledge-ops-lab/actions/runs/42827473405/job/129868488355) · [**Pilot/Entscheidung**](https://github.com/SFS-Labs/ai-knowledge-ops-lab/blob/main/showcases/internal-service-intake/DECISION_EVIDENCE_BRIEF.md).

Der anfänglich gescheiterte E2E-Verifikationsjob wurde **nicht** als bestanden gewertet. Ein separater Folgejob bestand nach einem geänderten Readiness-Check. Der Quellstand blieb identisch; die Ausführung erfolgte auf zwei Actions-Runs. [Ablauf und Prüflimit](https://github.com/SFS-Labs/ai-knowledge-ops-lab/pull/30).

### 2. [Tender Intelligence](https://github.com/SFS-Labs/tender-intelligence-case-study)

**Arbeitsgegenstand:** EU-Ausschreibungsdaten aus der offiziellen TED-Schnittstelle erschließen und den Zusatznutzen einer AI-gestützten Auswertung prüfen.

**Ergebnis:** Vier kontrollierte Modellaufrufe, jeweils zwei pro Vergleichsarm. Beide erreichten 32/32 richtige vorbereitete Fakten; erwartete Quellenkennungen 26/32 (Baseline) versus 25/32 (SFS). Ein Qualitätsgewinn wurde nicht belegt. Die kommerzielle Weiterentwicklung wurde ausgesetzt.

[**Entscheidungsprotokoll**](https://github.com/SFS-Labs/tender-intelligence-case-study/blob/main/docs/DECISION-LOG.md) · [Methodik](https://github.com/SFS-Labs/tender-intelligence-case-study/blob/main/docs/METHODOLOGY.md).

### 3. [SFS Genomics](https://github.com/SFS-Labs/sfs-genomics)

**Arbeitsgegenstand:** iPhone-first Import, persistente EU-D1-Datenspeicherung, OAuth-geschützte MCP-Werkzeuge und getrennte wissenschaftliche Referenzdaten.

**Ergebnis:** **607.051 akzeptierte SNP-Calls** in **256 persistenten Partitionen** abgeglichen; authentifizierte Client-Aufrufe und ein begrenzter **Fünf-Loci-Referenzpilot** dokumentiert. Das ist ein Engineering-Nachweis, **keine** klinische Diagnose, individuelle Risikoprognose oder unabhängige Laborbestätigung.

[**Engineering-Nachweis**](https://github.com/SFS-Labs/sfs-genomics/blob/main/genomics/PORTFOLIO.md) · [Wissenschaftliches Validierungsprotokoll](https://github.com/SFS-Labs/sfs-genomics/blob/main/genomics/SCIENTIFIC_VALIDATION_PROTOCOL.md).

## Zwei ergänzende Arbeiten

### 4. [SFS Education Funding](education-funding.md)

Quellen erfasst und versioniert, Claims und Kandidaten voneinander getrennt, Eligibility mit Pass/Fail/Unknown-Regeln modelliert. Historischer Checkpoint vom 28.10.2026: **16.088 URLs, 725 Dokumente, 353 Kandidaten, 0 verifizierte Förderprogramme**. [Öffentlich lesbare Fallstudie](education-funding.md).

### 5. [POINCARÉ — externer Solidity-Review](../security-review/case-studies/poincare-2026.md)

Sieben First-Party-Dateien innerhalb des vereinbarten Scope geprüft; **222 originale Foundry-Tests** unabhängig reproduziert, **zwei Low-Befunde** und **acht Hinweise** dokumentiert. Neun spätere Entwickler-Commits mit Änderungen in 26 Dateien auf Quellcodeebene eingesehen; überarbeitete Tests **nicht** unabhängig neu ausgeführt.

## Weitere technische Nachweise

- **REA Stack** — [Abnahme der begrenzten MCP-Orchestrierung](https://github.com/SFS-Labs/security-reviews/blob/main/docs/CAMBER_MULTITOOL_ACCEPTANCE.md) und [erfolgreicher Prüflauf](https://github.com/SFS-Labs/security-reviews/actions/runs/40716523503).
- **SFS AI Docs** — [Fallstudie zur Dokumentations- und Archivierungsstrecke](sfs-ai-docs.md) mit öffentlichem GitHub-Actions-Prüflauf.

## Fachliche Arbeitsweise

**Discover → Translate → Design → Deliver → Evaluate** beschreibt eine iterative Verbindung von Problemdefinition, Anforderungen, Lösungsentwurf, technischer Ausführung und Ergebnisprüfung.

**Attribution:** Eigene Beiträge zu Problemrahmen, Anforderungen, Prüfkriterien und Entscheidungen; AI-assisted Implementierung und Auswertung.

[**Kurzprofil und Berufserfahrung**](../README.md) · [**Projektansicht im Browser**](https://sfs-labs.github.io/ai-knowledge-ops-lab/recruiter.html).
