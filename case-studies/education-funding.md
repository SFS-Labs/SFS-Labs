# SFS Education Funding — Quellen, Regeln und prüfbare Grenzen

**Engineering-Fallstudie · dokumentierter Stand vom 28. Oktober 2026**

SFS Education Funding untersucht, wie Informationen über Studien- und Ausbildungsförderung aus verschiedenen Quellen erfasst, versioniert und anhand überprüfbarer Voraussetzungen ausgewertet werden können. Der technische Prototyp verwendet Cloudflare D1, einen regelbasierten Prüfpfad mit drei Ergebnissen und eingeschränkte MCP-Zugriffe.

**Wesentliche Trennung:** Eine gefundene Fördermöglichkeit ist kein verifiziertes Programm. Ein extrahierter Hinweis ist keine geprüfte Anspruchsvoraussetzung. Ein Programm mit ungeklärten Bedingungen begründet keinen Förderanspruch.

## Eigene Aufgaben und technische Anwendung

- **Problemanalyse:** Auffindbarkeit von Programmen, Herkunft der Informationen, Regeln und persönliche Förderberechtigung getrennt betrachten.
- **Entwurf:** URL, Dokument, Dokumentversion, extrahierte Aussage, Regelstatus und Programmkandidat als unterschiedliche Entitäten modellieren.
- **Umsetzung:** Quellensammlung über sechs Ursprungsdomains, persistente URL-Warteschlange, Versionierung, SQL/FTS5, nachvollziehbare Claims und sieben OAuth-beschränkte MCP-Tools.
- **Bewertung:** Bedingungen ausdrücklich als Pass, Fail oder Unknown behandeln. Fehlende Angaben werden nicht automatisch zu einer positiven Zusage.
- **Attribution:** Problemrahmen, Evidenzabgrenzung und Prüfkriterien als eigene Beiträge; technische Implementierung und Tests AI-assisted.

## Dokumentierter Datenstand

Der protokollierte Checkpoint vom **28.10.2026, 01:17 UTC** enthielt:

| Kategorie | Wert | Bedeutung |
| --- | ---: | --- |
| Entdeckte oder vorgemerkte URLs | 16.088 | Such- und Warteschlangenbestand, nicht 16.088 bestätigte Programme |
| Verschiedene Dokumente | 725 | Erfasste Dokumente, nicht vollständig geprüfte Quellen |
| Dokumentversionen | 729 | Versionierte Zustände; nicht mit Dokumentanzahl gleichsetzen |
| Automatisch erkannte Kandidaten | 353 | Ungeprüfte Kandidaten, nicht nachgewiesene Förderprogramme |
| Extrahierte Felder | 901 | Strukturierte Hinweise aus Quelltexten |
| Dokumentierte Quellenaussagen | 2.025 | Herkunftsbezogene Claims, nicht bestätigte rechtliche Ansprüche |
| Verifizierte Programme | **0** | Historischer Verifikationsstatus; keine bestätigte Eligibility |

Die damalige interne Prüfaufzeichnung nennt **15 bestandene automatisierte Tests** und erfolgreich durchlaufene protokollbezogene Prüfungen. Die zugrunde liegenden Rohdaten, Betriebslogs und der vollständige Quellcode sind hier **nicht anonym öffentlich verfügbar**; deshalb sind diese Angaben als **dokumentierte interne Ergebnisse** zu lesen, nicht als unabhängig reproduzierte öffentliche Messung.

## Implementierung und Ergebnisgrenzen

Das Projekt verknüpft Quellenerfassung, Datenversionierung, relationale Belegketten und regelgebundene Abfragen. Fehlende oder widersprüchliche Anforderungen werden ausdrücklich kenntlich gemacht. Für einen tatsächlichen Förderabgleich fehlen am angegebenen Checkpoint insbesondere ein hinreichend verifizierter Programmkatalog und geprüfte vollständige Anspruchsregeln.

Die technische Schnittstelle war intern über OAuth/Cloudflare Access kontrolliert und wurde auf Protokollebene getestet. Eine vollständig bestätigte persönliche ChatGPT/iOS-End-to-End-Nutzung ist **nicht belegt**. Die Cloudflare-D1-Lesequoten begrenzten weitere Prüfungen zum historischen Zeitpunkt. Es gibt keinen Nachweis, dass die protokollierte Sammlung vollständig ist.

**Nicht behauptet:** verifizierte Förderberechtigung, vollständig geprüfte Förderprogramme, ausgelieferter Kundendienst, nachgewiesene Kostenersparnis oder ein fertiges kommerzielles Produkt.

Die Fallstudie enthält keine persönlichen Förderanträge, Bewerberprofile, Zugangsdaten oder Kopien fremder Quellendokumente. Das Implementierungsrepository [education-funding-mcp](https://github.com/SFS-Labs/education-funding-mcp) ist nicht öffentlich lesbar; der Link ist daher lediglich eine Repository-Identifikation und kein öffentlicher Primärnachweis.

[Weitere Projekte und Kompetenzen](../README.md)
