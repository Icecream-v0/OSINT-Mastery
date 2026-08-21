# LinkedIn

LinkedIn knows where everyone works and hates letting you see it without logging in.
The craft is getting around that politely.

## X-ray search (the essential technique)

Google indexes profiles despite the login wall:

```
site:linkedin.com/in "john smith" chicago
site:linkedin.com/in "acme corp" ("engineer" OR "director")
site:linkedin.com "acme corp" "python" -inurl:dir   # skills mentions
```

This avoids login entirely and doesn't notify anyone. It's 80% of LinkedIn OSINT.

**Recruit'em** and similar tools build these query strings for you across Google,
Bing, and Yahoo simultaneously.

## Company intelligence

- **Employee counts over time** — Wayback Machine snapshots of company pages reveal
  headcount trends: growth spurts, silent layoffs, department sizes.
- **Job postings** — reveal tech stack, expansion plans, internal tooling names,
  sometimes salary bands. Current AND archived postings both matter.
- **Alumni mining** — school alumni pages and `site:linkedin.com/in` + university +
  graduation year find people who've scrubbed their current employer mention.
- **Departure patterns** — ex-employees talk. Search `"ex-acme"` or former employees'
  posts about the company; Glassdoor reviews add culture context.

## The notification problem

Viewing profiles while logged in tells the person unless you have anonymous mode
(partially hides you) — and anonymous mode blocks seeing who viewed you back, which
recruiters notice. Options:

1. Stay logged out, live on x-ray search (cleanest).
2. Sock puppet recruiter persona — effective, common, TOS-violating, burns if the
   target checks your fake profile too closely.
3. Your real identity — only when overt contact is fine anyway.

## What LinkedIn uniquely gives you

- Employment history verification (the anti-fraud use case)
- Org charts built from manager/report relationships in job titles
- Conference talks, patents, publications listed under profiles
- Skills endorsements revealing what someone actually works with

## Cross-reference everything

LinkedIn claims are self-reported resumes — people inflate. Verify employers against
company registries (07-business-crypto/), conference attendee lists, GitHub commit
histories, and publication records before treating any claim as fact.
