# The Intelligence Cycle

Raw searching isn't intelligence work. Professionals run a loop that turns scattered
public fragments into decisions. It's called the intelligence cycle, and even an
informal version of it will put you ahead of 90% of "OSINT researchers" online.

## The five phases

**1. Direction (planning)**
Define the actual question before touching a search bar. "Find everything on John"
is not a question. "Determine whether John Smith, claiming to be a former Acme
engineer, actually worked there" is. Good requirements specify: who needs the
answer, what decision it supports, what would count as success, deadlines.

Write your Priority Intelligence Requirements down. They become your filter against
rabbit holes — and this field is nothing but rabbit holes.

**2. Collection**
Gather material against those requirements using everything in this folder: dorks,
platforms, registries, imagery. Log sources as you go (URL, timestamp, what you
expected to find). Collection without logging has to be redone later; it always has
to be redone later.

**3. Processing**
Raw collected data → usable form. Translate, transcribe, organize into timelines,
extract entities, convert formats. Unglamorous, essential. This is where Hunchly or
disciplined screenshot hygiene pays off.

**4. Analysis**
The actual thinking: pattern recognition, link analysis, hypothesis testing,
confidence assessment. Techniques worth learning by name:

- **ACH (Analysis of Competing Hypotheses)** — list every possible explanation,
  systematically test evidence against each. Fights confirmation bias structurally.
- **Timeline analysis** — contradictions reveal themselves in chronology constantly.
- **Link analysis** — network graphs of people/orgs/assets with evidence-labeled edges.

**5. Dissemination**
Deliver the product (see [writing-it-up](12-methodology/writing-it-up.md)) to whoever needed the
answer, at their level of detail.

Then **feedback**: was it useful? What's missing? That reshapes next cycle's
direction. The loop continues as long as the question matters.

## Evaluating everything you collect

Two questions for every source:

1. **How reliable is this source?** (track record, independence, access)
2. **How credible is this specific piece of information?** (corroborated?
   internally consistent? plausible?)

The Admiralty shorthand (A1 through F6) exists so you can grade quickly and
consistently. A tweet from the subject themselves about their own location:
reliable source (they know), credible info (why lie here?) — but note the
difference between that and a third party claiming the same thing.

## Why the cycle matters in practice

Because undisciplined research produces confident nonsense. The person who "did
OSINT for six hours" and returns with forty unvetted screenshots has less value
than the one who ran two focused cycles and returns with three assessed findings.
Depth beats volume; structure beats enthusiasm.
