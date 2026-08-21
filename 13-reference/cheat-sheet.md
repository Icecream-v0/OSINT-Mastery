# The Cheat Sheet

The whole guide compressed into one page. Bookmark this — it's what you'll actually
open at 2am mid-investigation.

## Google dorks

```
"exact phrase"                     site:target.com
filetype:pdf / ext:xlsx            intitle:"index of"
inurl:admin                        before:2024-01-01  after:2023-01-01
AROUND(3)                          related:site.com
```

| Goal | Dork |
|---|---|
| Open directories | `intitle:"index of" "backup"` |
| Exposed docs | `site:target.com filetype:xlsx` |
| Someone's profiles | `"name" (site:linkedin.com/in OR site:x.com)` |
| Email leaks in docs | `"@target.com" filetype:pdf` |
| Site's subdomains | `site:*.target.com -www` |

## Engine cheat rules

- **Yandex** → faces, CIS region, same-photo-different-name
- **Google Lens** → objects, landmarks, text in images
- **TinEye** → sort by oldest = find the original
- **Bing** → different index, `ip:` operator
- Always run at least Yandex + Google + TinEye

## Person investigation order

1. Username → WhatsMyName / Sherlock / Maigret
2. Email → Holehe (registrations), Epieos (Google/Microsoft linkage), HIBP (breaches)
3. Phone → Truecaller, WhatsApp/Telegram probe, PhoneInfoga
4. Face → Yandex Images tight crop, PimEyes if justified
5. Verify every hit with 2+ independent signals before believing it

## Infrastructure pivots

| Find | Tool |
|---|---|
| Subdomains | crt.sh, DNSDumpster, Amass |
| Historical DNS | SecurityTrails, ViewDNS |
| Devices on IP range | Shodan, Censys |
| Same-operator sites | PublicWWW (analytics IDs), favicon hash on Shodan |
| Old page versions | Wayback CDX API, archive.today |

## Geolocation clue hierarchy

Landmarks → signage/language → plates & road markings → vegetation/climate →
architecture era → utility poles/bollards. Confirm with Street View, timestamp with
SunCalc, verify mountains with PeakVisor.

## Money trails

- Companies: OpenCorporates → Companies House (PSC register) → SEC EDGAR → OCCRP Aleph
- Sanctions/PEP: OpenSanctions
- Property: county assessor/recorder sites (free), UK Land Registry (£7)
- Aircraft owner: FAA Registry by tail number
- Ships: MarineTraffic by IMO number, Equasis for ownership history

## Crypto quick hits

- Bitcoin: mempool.space, common-input heuristic, change tracking, ChainAbuse labels
- Ethereum: Etherscan labels, DeBank portfolio view, Arkham labels, Breadcrumbs tracer
- Posted addresses: search them verbatim everywhere before chain analysis
- Monero: effectively opaque — say so honestly

## Confidence language (ICD-203)

| Term | Range |
|---|---|
| Almost certainly | 95–99% |
| Highly likely | 80–95% |
| Likely/probably | 55–80% |
| Roughly even chance | 40–55% |
| Unlikely | 20–40% |
| Very unlikely | 5–20% |

## Pre-publication checklist

- [ ] Every claim has a source I saved (screenshot/archive/hash)
- [ ] Facts separated from analysis and assumptions
- [ ] Two+ independent confirmations for identity claims
- [ ] Confidence language applied honestly
- [ ] Would I stand behind this in front of the subject, a judge, or my editor?
- [ ] Lawful purpose documented before collection started

## Practice rotation (weekly)

GeoGuessr daily · one Quiztime puzzle · one Bellingcat exercise · monthly Trace Labs
event · write up everything you learn.
