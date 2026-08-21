# Famous Case Files

The investigations that made OSINT famous. Each one is a masterclass in a specific
technique — and each has a lesson about limits. Read these like a pilot reads accident
reports: for the method, and for the near-misses.

## The Skripal Poisoning (2018) — travel data as identity

Two men poisoned Sergei and Yulia Skripal in Salisbury with Novichok. Western
journalists and Bellingcat, working separately, identified them as Russian GRU
officers.

**How:** the cover identities ("Ruslan Boshirov," "Alexander Petrov") were unraveled
through leaked Russian databases, passport records showing years of coordinated
travel under different names always alongside GRU leadership, and document metadata.
The decisive move: cross-referencing leaked civilian databases against official
records to find the real people behind the aliases.

**Lesson:** identity is a pattern of correlated records, not a name. One alias breaks;
ten years of synchronized travel history doesn't.

## MH17 (2014) — crowdsourced geolocation at scale

Malaysia Airlines Flight 17 was shot down over eastern Ukraine. Official investigation
was slow; open-source investigators weren't.

**How:** Bellingcat combined social media photos of a Buk missile launcher's route,
geolocated each image (roadside furniture, signage, shadows), built a timeline and
route map, then verified with satellite imagery. Thousands of small verifications by
dozens of volunteers produced a court-grade reconstruction. Follow-up work even
identified individual crew members via social media posts.

**Lesson:** many weak signals, each independently verifiable, aggregate into an
unignorable conclusion. Also: the open-source case ran *parallel* to the legal one —
and eventually fed it.

## The Boston Marathon Bombing (2013) — the crowd does both good and harm

Thousands of photos and videos existed because hundreds of phones pointed at the
finish line. Investigators used imagery to identify the Tsarnaev brothers within days.

**But:** Reddit's user-led "investigation" misidentified missing students as suspects,
one of whom had died and the other was later found dead — hounded by media before
facts settled.

**Lesson:** collection by crowd works; *attribution* by crowd doesn't. Verification
discipline exists precisely because pattern-matching humans see faces in clouds.
This case is why every ethics chapter in this guide exists.

## The Christchurch Attack Livestream (2019) — verification under time pressure

The shooter livestreamed his attack. Copies spread instantly; platforms scrambled;
researchers needed to verify provenance while refusing to amplify the content.

**How:** verification teams worked from first-frame analysis, metadata of re-uploads,
and platform upload timestamps to map propagation without redistributing the video
itself. The craft was in handling evidence of horror responsibly: analyze, don't
republish.

**Lesson:** sometimes the skill isn't finding truth but handling it without becoming
part of the attack's distribution strategy.

## The Navalny Poisoning (2020) — phone numbers as infrastructure

Alexei Navalny, poisoned with Novichok, recovered and then called his own attackers —
posing as a security official, he got FSB agent Konstantin Kudryavtsev to explain how
the poison was applied to his underwear. The recording went global.

**The OSINT around it:** Bellingcat and The Insider had spent months linking a unit
of FSB officers ("the second unit") to Navalny through telecom metadata, travel
records, and phone-number correlations — the same team appeared wherever Navalny went,
under overlapping identities.

**Lesson:** phone numbers are stubborn identifiers. People rotate emails and handles;
they keep their numbers. Correlation across years defeats alias rotation.

## The ElonJet Saga (ongoing) — public data meets personal privacy

A student tracked Elon Musk's private jet using freely broadcast ADS-B transponder
data and a bot posting its location. Musk offered money to stop; then Twitter banned
the account; litigation and policy debates followed.

**Lesson:** everything transmitted publicly can be collected lawfully — but lawful
collection still creates ethical and platform-policy fights. Technical capability
never settles the publication question. This case is now taught in every serious
OSINT course as the boundary seminar.

## Patterns across all six

1. **Correlation beats single sources** — no case turned on one clever find; all
   turned on many boring confirmations stacking up.
2. **Archives win cases** — deleted tweets, old whois records, historical imagery:
   the past is where proof lives.
3. **Discipline protects innocent people** — Boston shows what happens when
   enthusiasm outruns verification.
4. **Lawful ≠ consequence-free** — ElonJet shows capability, ethics, and policy
   pulling in different directions.

Study the originals: Bellingcat's published methodology posts read like lab reports.
That transparency is itself the lesson — show your work, and your conclusions carry
weight that assertions never will.
