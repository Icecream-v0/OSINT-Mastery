# Email Addresses

An email address is one of the richest pivots you'll ever hold. It links breaches,
accounts, domain registrations, and documents. This file covers finding them,
verifying them, and squeezing them.

## Finding emails

**Pattern guessing.** Corporate emails follow formats: `j.smith@`, `jsmith@`,
`john.smith@`, `smithj@`. Tools like Hunter.io show a company's dominant pattern and
verify deliverability. Guess three ways, verify each.

**Where emails leak into public view:**

- GitHub commits — `git log` exposes author emails forever. Browse someone's repos,
  check commit metadata. Shockingly effective for "anonymous" developers.
- PDFs and docs — author metadata, contact pages, FOIA releases. Search dorks:
  `"@target.com" filetype:pdf`
- Conference attendee lists, court filings, whois records (pre-privacy era),
  nonprofit board minutes, university directories.
- Paste sites and forums signatures.

**Email permutators** generate every plausible variant of a name; pair with
verification below.

## Verifying and enriching

- **Holehe** (CLI) — checks whether an email is registered on 120+ sites without
  triggering notifications. Tells you where the owner has accounts. Excellent.
- **Epieos** — paste a Gmail address and it can reveal the linked Google account
  name, plus registrations across services. Also shows Microsoft account linkage.
  One of the few free tools that feels like cheating.
- **emailrep.io** — reputation score: how exposed/spammy the address is.
- **Gravatar** — `en.gravatar.com/EMAILHASH` may return the avatar and full name
  users attached to that email. Hash = MD5 of the address.
- **HaveIBeenPwned** — which breaches contain this address. Free for single lookups;
  tells you what passwords/names might be associated (via breach names, not actual
  passwords — HIBP never shows those).

## Breach data — read this part carefully

Breach search engines exist (DeHashed, Snusbase, IntelX and friends). Accessing
stolen personal data carries real legal risk in many countries and poisons evidence.
Journalists and authorized fraud investigators use these under legal cover. If
that's not you: stick to HaveIBeenPwned's legitimate interface and treat raw dumps
as radioactive.

## The gray-zone techniques (know what they are)

Password-reset flows reveal masked contact info ("j•••@g•••.com") confirming an
account exists on a platform. Widely taught, legally contested, TOS-violating. If
you use them, document justification and understand courts may exclude the fruit.

## What to extract once verified

Registration footprint (Holehe/Epieos), breach exposure (HIBP), gravatar photo →
reverse image search, username portion → feed back into `usernames.md`. Every answer
should spawn the next question.
