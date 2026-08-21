# Usernames

People are creatures of habit. The handle they made at fourteen follows them for
twenty years across platforms they forgot they joined. Username pivoting exploits
this, and it's usually the fastest thread to pull when you have almost nothing.

## The core technique

Take any known handle — `darkwolf42`, `sarah.builds`, whatever — and check it across
hundreds of platforms simultaneously:

- **WhatsMyName** (whatsmyname.app) — the community-maintained standard. Web app and
  the list behind it power most other tools. Start here.
- **Sherlock** (CLI) — checks a username across 400+ sites. Noisy but fast.
- **Maigret** — Sherlock's more refined cousin; builds a report page with profile
  info extracted from found accounts.
- **Blackbird** — fast, includes some breach-correlation features.
- **InstantUsername / NameCheckr** — quick web checks on major platforms.

## False positives are the enemy

A hit means "someone uses this handle there," not "my target is this person."
Common handles collide constantly. Verification checklist before you accept a match:

1. **Avatar consistency** — same or similar photos? Reverse-search them.
2. **Bio overlap** — same city, job, birthday, links?
3. **Writing style** — punctuation habits, slang, emoji use are fingerprints.
4. **Timeline plausibility** — account created around when your subject was active
   elsewhere? Dead account from 2011 probably isn't them.
5. **Cross-links** — does one profile link to another? Chain of custody established.

Two independent confirmations minimum. Three for anything you'll publish.

## Variations to try

- Exact handle
- With/without separators: `sarah_builds`, `sarahbuilds`, `sarahbuilds`
- Leetspeak variants: `s4rah`
- Handle + birth year: `sarahbuilds95`
- Reversed: `buildssarah`

Automated tools only test the exact string. The variants are manual work, and
they're where the wins hide.

## Where the handle leads

Found profiles → bio emails → breach lookups → photos → geolocation clues → friend
networks. Also work backwards: emails often contain handles (`jsmith92@` implies
`jsmith92`), and real names generate predictable handle patterns worth testing.

One warning: if you're checking whether *your own* handles are exposed (you should),
don't run tools from accounts/identities you care about — some platforms flag bulk
checks as suspicious activity.
