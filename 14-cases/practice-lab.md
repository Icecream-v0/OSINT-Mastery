# The Practice Lab

Reading about OSINT is watching gym videos. This is the gym. Ten drills, escalating
difficulty, each with a hidden answer so you can check yourself honestly. Do them for
real — every skill here is legal to practice on public data.

**Rules:** document as you go (screenshots with URLs), time-box each drill, and write
down your reasoning even when you fail. The reasoning IS the training.

## Drill 1 — Dork warm-up (15 min)

Find the PDF resume of a fictional-but-plausible person: pick any uncommon name from
a recent conference speaker list, then find their CV using only Google operators.

<details><summary>Answer / method</summary>

`"full name" (filetype:pdf OR filetype:doc) (resume OR cv)` — then verify it's the
right person via employer/university matches. If Google fails, try Bing; indexes
differ. Success = found + verified identity match.
</details>

## Drill 2 — Username archaeology (20 min)

Invent a handle like `nightowl_92`. Run it through WhatsMyName and Sherlock. Pick one
hit and try to prove or disprove it belongs to a "real person" (it won't — that's the
point: practice verification failure).

<details><summary>Answer / method</summary>

Check avatar consistency (reverse-search it), bio details, account age vs activity
pattern. Most hits die at step two. Write down WHY you rejected each false positive —
that checklist becomes your permanent verification template.
</details>

## Drill 3 — Email footprint (25 min)

Take any public figure's publicly listed contact email (author, journalist). Run
Holehe, check Gravatar, search the address verbatim in Google AND Bing.

<details><summary>Answer / method</summary>

Typical yield: conference attendee lists, mailing-list archives, old forum posts,
occasionally a GitHub commit. The lesson: emails leak sideways into third-party
documents their owners forgot existed.
</details>

## Drill 4 — Reverse image chain (30 min)

Grab any news photo from today's headlines. Run Yandex, Google Lens, TinEye (sorted
oldest-first). Document where else it appears and when it first appeared.

<details><summary>Answer / method</summary>

You're mapping provenance: wire service original → aggregator copies → social reposts.
TinEye's oldest hit should be the earliest indexed use. If an "exclusive" image has
older copies under different context, you've caught recycled media — the core
fact-checking move.
</details>

## Drill 5 — Geolocate one photo (60 min)

Use any Quiztime puzzle or GeoGuessr challenge screenshot. Full method: catalog clues
→ hypothesize region → verify in Street View → final coordinates.

<details><summary>Answer / method</summary>

Clue order: language/script on signage → license plates → driving side → bollards and
utility poles → vegetation. Verify by walking Street View until facade matches. Log
your time-to-solve; track improvement monthly. Under 30 minutes for a mid-difficulty
image = solid progress.
</details>

## Drill 6 — Domain autopsy (45 min)

Pick any company. Build its external surface: subdomains (crt.sh), historical IPs
(SecurityTrails free tier), tech stack (Wappalyzer), archived team pages (Wayback).

<details><summary>Answer / method</summary>

crt.sh alone usually yields 10–50 subdomains including forgotten staging servers.
Wayback team pages give former-employee names for LinkedIn x-ray. Deliverable: a
one-page profile listing domains, tech, and five employees — exactly what a pentest
recon report contains.
</details>

## Drill 7 — Corporate tree (60 min)

On OpenCorporates, look up a known brand's holding structure. Find parent company,
three subsidiaries, and one director who appears in multiple entities.

<details><summary>Answer / method</summary>

Start from the operating name, follow "officers" tabs. Cross-directorship is the
normal finding — map it as nodes/edges. UK entities are easiest (Companies House is
free); US requires state-by-state searches. Lesson: corporate complexity is a maze
with public walls.
</details>

## Drill 8 — Crypto breadcrumb (40 min)

Find any charity or public figure that posts a Bitcoin/Ethereum donation address.
Trace its last 20 transactions. Identify which exchange (if any) funds touched.

<details><summary>Answer / method</summary>

Etherscan labels make Ethereum easier than Bitcoin for beginners. Look for inbound
from labeled exchange hot-wallets. You cannot get account names past KYC — noticing
where the trail legally stops IS the lesson.
</details>

## Drill 9 — Flight tracking (30 min)

Pick any aircraft on ADS-B Exchange over a city. Get its tail number, look up the
owner in the FAA registry, and find one prior flight route (FlightAware history).

<details><summary>Answer / method</summary>

Tail number → registry.faa.gov → owner entity (often an LLC) → state corporate
search for the LLC's agent. Chain: broadcast signal → government record → corporate
registry. Three public databases, zero logins, full ownership picture.
</details>

## Drill 10 — Full mini-investigation (2–3 hours)

The graduation exercise: investigate a *fictional persona* you create yourself. Build
"their" accounts across three platforms with planted connections between them, wait a
week, then hand the handles to a friend (or another AI session) and see if they can
reconstruct the network you built.

<details><summary>Answer / method</summary>

You'll learn more from building a fake identity web than from reading ten chapters:
which links were too obvious, which clues betrayed construction, how fast consistent
small details let an investigator pivot. Every technique in this guide runs in
reverse when you're the architect.
</details>

## Scoring yourself

| Drills passed | You are here |
|---|---|
| 1–3 | Curious civilian |
| 4–6 | Competent researcher |
| 7–9 | Dangerous (to actual targets) |
| 10 | Ready for Trace Labs events |

After drill 5, start doing GeoGuessr daily — no exceptions, it compounds faster than
anything else on this list.
