# What's Actually Out There

You've got Tor running and you're not going to blow your cover. Now: what is
actually worth looking at? The dark web is smaller, slower, and more boring than
the headlines suggest — but for OSINT it holds things you cannot find anywhere else.

## Search engines that work over onion

| Engine | Notes |
|---|---|
| **Ahmia** (`juhanurmihxlp77nkq762az5ylh6tj7njtlbsg2l6gr5vi5hemnhszvmad.onion`, also clearnet at ahmia.fi) | The only mainstream onion search engine worth using first. Indexes .onion sites, also lets you search from the normal web. |
| **Torch** | One of the oldest indexes. Huge but noisy — expect dead links and junk. Good for obscure stuff Ahmia misses. |
| **Haystak** | Claims billions of indexed pages. Decent filtering. Free tier is usable. |
| **Phobos / OnionLand** | Smaller directories, useful as fallbacks when nothing else surfaces a target. |

Treat all of them like early-2000s web search: try three engines before concluding
something isn't there.

## Categories that matter for investigations

**1. Leak sites and breach dumps.** Ransomware groups run PR blogs where they
name and shame victims. If your target company appears there, that's intelligence
about their security posture — and often leaked data follows. Monitor these the
way you'd monitor a vendor's status page.

**2. Paste sites and dump forums.** Credential combos, database dumps, internal
docs. Searching your own organization's domains here is legitimate defensive work
(see `06-domains-networks/` for exposure monitoring too).

**3. Forums and markets.** Even if you never transact, forum posts are a goldmine
for attribution: usernames reused from the clearnet, writing style, time zones in
posting patterns. Same tradecraft as `03-people/usernames.md`, different venue.

**4. Whistleblowing and journalism platforms.** SecureDrop directories, mirrors
of censored media. Context for understanding what a region's information
environment looks like.

**5. Mirrors of everything else.** Wikipedia, BBC, ProtonMail over onion. Mostly
irrelevant to investigations but confirms Tor works when nothing loads.

## What is NOT out there

- A tidy index of everything. Most onion services live days or weeks. Dead ends
  are the norm, not a failure of your technique.
- Reliable "hacker search engines" that screenshot nicely on LinkedIn. Half the
  ones shared on social media are scams or honeypots.
- Anything you should interact with. You are a reader. No accounts, no purchases,
  no messages, no file downloads you don't sandbox first.

## Practical workflow

1. Start with Ahmia; fall back to Torch/Haystak with quoted phrases and your
   target's unique identifiers (email domains, usernames, wallet addresses).
2. Log every URL the moment you find it — onion addresses die fast, and archive
   services mostly don't cover .onion. Screenshot with timestamps.
3. Cross-reference every dark-web finding against clearnet sources. A claim that
   exists *only* on an anonymous forum is a lead, not a finding.
4. Watch your own footprint: no JavaScript (Tor blocks it by default — leave it
   that way), no logging into anything personal, distinct machine or VM per
   `10-toolkit/building-your-rig.md`.

## Legal note

Browsing public onion services is legal in most jurisdictions. Buying data,
accessing stolen credentials, or interacting with criminal services is not — and
"research" is not a defense that reliably works. Re-read
`01-foundations/law-and-ethics.md` before you go deeper than reading.
