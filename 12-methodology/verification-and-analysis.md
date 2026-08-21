# Verification and Analysis

Finding things is the easy half. The hard half — the part clients, courts, and
editors actually pay for — is being able to say *why you believe it*. This file
covers how to test a finding before you put your name on it.

## The verification ladder

Not all evidence is equal. Before treating a finding as fact, work out which rung
it sits on:

1. **Documentary proof** — government registry records, court filings, signed
   documents. Rely on it directly.
2. **Primary self-published** — the target's own website, their own social posts,
   their own press releases. Reliable for what they *claim*, not for truth.
3. **Independent corroboration** — two or more unrelated sources agreeing.
   Unrelated is the key word: ten articles all citing one tweet are one source.
4. **Single secondary report** — someone else said it. A lead, nothing more.
5. **Anonymous or unverifiable** — forum posts, pastes, screenshots of unknown
   origin. Treat as a hypothesis to test, never as a finding.

Most bad OSINT happens when someone promotes rung 4 or 5 to rung 1 because the
story was exciting.

## Corroboration done right

- **Independence test:** trace each source back to its origin. If they share a
  root (one leak, one tweet, one press release), you have one source wearing
  several coats.
- **Adversarial check:** actively look for disconfirming evidence. Spend as much
  effort trying to *break* your finding as you spent building it. If you can't
  name what would change your mind, you don't have an analysis — you have an opinion.
- **Time check:** when was each piece published? A "corroborating" article from
  before the event can't corroborate anything about it.

## Analysis of Competing Hypotheses (ACH)

Richards Heuer's method from his CIA days, and the single best antidote to
confirmation bias:

1. List every plausible hypothesis — including the boring ones and the ones you
   dislike. Five is better than two.
2. List your evidence down the side.
3. For each evidence × hypothesis cell, note whether it's **consistent**,
   **inconsistent**, or **irrelevant**.
4. The winning hypothesis is the one with the fewest *inconsistencies* — not the
   most confirmations. One solid contradiction should kill a theory that has
   twenty supporting facts.

Tools like the open-source [AnalysisOfCompetingHypotheses.com](https://analysisofcompetinghypotheses.com)
or a plain spreadsheet work fine.

## Digital content verification

For images, video, and accounts:

- **Provenance:** where did this first appear? Reverse image search
  (`05-images-video/reverse-image-search.md`) to find earlier versions. The
  earliest instance is usually closest to the truth.
- **Metadata:** EXIF can confirm or destroy a claim — but its absence proves
  nothing, since platforms strip it (`05-images-video/metadata-exif.md`).
- **Geolocation:** pin imagery to a real place via landmarks
  (`05-images-video/geolocating-photos.md`). If the claimed location doesn't
  match the visual evidence, stop and reassess everything else from that source.
- **Chronolocation:** shadows, weather history, vegetation, and posted timestamps
  can date media to within hours in favorable cases.
- **Synthetic media:** AI-generated faces and voices are now common. Watch for
  perfect-but-wrong details: earrings that don't match, background text that
  isn't quite letters, hands, teeth, glasses frames that merge into hair. Never
  declare something "AI" on vibes alone — name the specific artifacts.

## Common traps

| Trap | What it looks like | Fix |
|---|---|---|
| Confirmation bias | Only collecting evidence that fits | ACH, adversarial check |
| Circular reporting | Ten headlines, one origin | Trace every source to root |
| Recency illusion | Treating a repost as breaking news | Search archives (`06-domains-networks/website-archives.md`) |
| Over-attribution | "Same username = same person" | Re-read `03-people/usernames.md` |
| Sockpuppet echo | Your own fake persona's "friends" confirming things | Never let personas generate evidence |

## Before you publish

Run every finding through this gate:

- [ ] Can I state the evidence for this in one sentence?
- [ ] Have I tried and failed to find disconfirming evidence?
- [ ] Is my confidence language calibrated (`writing-it-up.md`)?
- [ ] Would I be comfortable if the target read this claim?
- [ ] Is every screenshot timestamped and archived?

If any box fails, the finding goes back to the collection pile — not the report.
