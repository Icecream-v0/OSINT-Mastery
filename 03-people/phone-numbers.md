# Phone Numbers

Phone numbers are stubborn identifiers — harder to rotate than emails, tied to SIMs,
banking, and two-factor everywhere. Here's how to work one.

## Normalize first

Convert to E.164 format: `+14155552671`. Search engines treat formats differently,
so run queries multiple ways: `415-555-2671`, `(415) 555-2671`, `4155552671`,
`+14155552671`. You'd be surprised how often one format hits and others don't.

## What the number itself tells you

- **Country and carrier** — numlookup-style services and libphonenumber parse the
  prefix: country, region (for landlines), carrier, line type (mobile/landline/VoIP).
- **VoIP detection matters** — VoIP numbers are cheap burner identities; mobile
  numbers tied to a carrier suggest a longer-lived identity worth pursuing.
- Number recycling: prepaid numbers get recycled. Verify the current user actually
  is who older records say before building conclusions.

## Lookup tools

- **Truecaller / sync.me** — crowdsourced caller ID. Massive databases, often shows
  the registered name. App-based, freemium.
- **PhoneInfoga** (CLI) — scans number footprint across free sources, identifies
  carriers/types, checks disposable-number databases.
- **Google the number in all formats** — complaint boards, business listings, WhatsApp
  group invites, classified ads. Classified ads are gold: sellers expose numbers next
  to photos, cities, and other items for sale.

## Messaging app probing

Save the number as a contact, then:

- **WhatsApp** — does an account exist? Profile photo, about text, last-seen settings.
  Photos reverse-search well. Business accounts show category and address sometimes.
- **Telegram** — similar; username attached to the number is a direct pivot into
  [usernames](usernames.md).
- **Signal** — existence check only, no metadata shown. Still useful to confirm
  registration.

This is passive collection — the target gets no notification that you saved their
number. Interacting (messaging) is a different story entirely.

## Gray zone, flagged honestly

Password-reset flows on some platforms reveal masked digits of linked numbers;
breach dumps contain full numbers. Both carry the legal/TOS caveats covered in
[law-and-ethics](01-foundations/law-and-ethics.md). Use judgment, document purpose.

## Where numbers lead

Number → WhatsApp photo → face search → social profile → bio with email → breach
check → password reuse patterns... you know the drill by now. Also remember numbers
as *geolocation clues*: country codes and regional prefixes narrow location when a
subject claims to be elsewhere.
