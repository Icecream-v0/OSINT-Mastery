# Reverse Image Search

Photos answer questions text can't: Is this profile fake? Where was this taken? Has
this image been recycled from something else? The skill is knowing which engine and
how to iterate.

## The engines, ranked by use case

| Engine | Best at |
|---|---|
| **Yandex Images** | Faces, Eastern Europe/CIS content, finding same-photo-different-name |
| **Google Lens** | Objects, landmarks, text inside images, products |
| **Bing Visual Search** | Products, some Western social profiles |
| **TinEye** | Finding *originals* — sort by oldest to trace provenance |

They index different webs entirely. Always run at least Yandex + Google + TinEye.
Professionals keep all four open in tabs as standard practice.

## Technique beats tooling

1. **Crop aggressively.** Full photos fail; tight crops of distinctive elements hit.
   Crop the face alone. Then the tattoo. Then the sign in the background. Each crop
   is a separate search.
2. **Sort TinEye by oldest** — the earliest appearance is usually the true origin.
   A "soldier's photo" from 2016 appearing in 2013 tells you it's stolen.
3. **Iterate.** Results give you new keywords → new searches → better crops. It's a
   loop, not a lookup.
4. **Grayscale/color flip** occasionally breaks through when engines fixate on color
   noise.

## Classic applications

**Fake profile detection:** subject's photo appears years earlier under a different
name, or belongs to a model/influencer. Instant verdict.

**Scam tracing:** romance-scam photos get reused across dozens of victims' reports —
image search surfaces complaint threads with the same face.

**Event verification:** photo claimed to be from today's protest actually indexed
from 2019. Check earliest date before believing any viral claim.

**Meme/disinfo origin tracing:** work backwards through reposts to patient zero.

## Video too

**InVID/WeVerify browser extension** — splits video into keyframes, then pushes each
frame to multiple reverse engines simultaneously. Standard tool for verifying viral
clips. Built by journalism-tech folks; free.

**FotoForensics** — Error Level Analysis for spotting spliced/edited regions. Noisy
and often misread by beginners — treat ELA as a hint requiring corroboration, never
as proof.

## Practice resources

Quiztime (Twitter/X quiz community), Bellingcat's verification exercises, GeoGuessr
for the geography side. Do these weekly; image forensics is a reps-and-sets skill.
