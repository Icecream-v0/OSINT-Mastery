# Writing It Up

Collection without communication is just browsing. The final skill — the one that
separates professionals from hobbyists — is turning findings into intelligence
products people can trust and act on.

## Structure that works

**1. BLUF — Bottom Line Up Front.** Key assessments in the first three lines.
Decision-makers read nothing else if you bury the answer on page four.

**2. Scope & methodology.** What question were you answering, what sources did you
use, what did you deliberately not do. This section is what makes findings auditable.

**3. Findings with confidence levels.** Each finding: the claim, the evidence, the
confidence, the source reliability.

**4. Gaps & limitations.** What you couldn't determine and why. Stating gaps builds
more credibility than pretending completeness.

**5. Appendices.** Evidence log: screenshots with URLs/timestamps, archive links,
hashes of key files.

## Confidence language (ICD-203 standard)

Use these terms precisely — they have agreed probability ranges:

| Term | Probability |
|---|---|
| Almost certainly | 95–99% |
| Highly likely | 80–95% |
| Likely / probably | 55–80% |
| Roughly/even chance | 40–55% |
| Unlikely | 20–40% |
| Very unlikely | 5–20% |

Never write "definitely" unless you have documentary proof. Never let a hunch wear
the costume of a finding.

## Source grading (Admiralty code)

Grade every source on two axes:

- **Reliability** (A–F): A = proven reliable historically ... E = unknown, F = can't judge
- **Credibility** (1–6): 1 = confirmed by other sources ... 5 = implausible, 6 = can't judge

"Source B2" notation in your evidence log tells readers exactly how much weight each
brick holds.

## Separation discipline

Label everything as one of:

- **Fact** — verifiable, evidenced ("Domain registered 2023-03-14 via Namecheap")
- **Analysis** — your reasoning from facts ("Registration timing precedes campaign
  launch by two weeks")
- **Assumption** — taken as true for the analysis but unverified ("Assuming the
  operator reuses infrastructure")

Mixing these is how innocent people get defamed and reports get shredded in court.
Keep them visibly separate.

## Attribution humility

Claiming "Account X is operated by Person Y" requires convergent evidence: multiple
independent pivots agreeing (username + photo + writing style + timeline + network
overlap). One matching username is a lead, never a conclusion. State what would
change your mind — falsifiability reads as rigor, not weakness.

## Visual products

- **Timelines** for chronology-heavy cases
- **Link charts** (Maltego/draw.io) for networks — label edges with the evidence
  supporting each connection; unlabeled edges are decoration
- **Maps** with numbered annotations for geolocation cases

## The test

Hand your report to someone unfamiliar with the case. If they can state the key
findings, how confident to be, and what evidence backs it — without asking you a
single question — it's done. If they ask "how do you know?", your methodology
section failed. Fix and repeat until silent.
