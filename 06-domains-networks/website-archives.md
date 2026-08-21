# Website Archives

The web forgets nothing — if you know where it stores its memory. Archives turn
"that page never existed" into "here's exactly what it said in March 2021."

## The Wayback Machine (web.archive.org)

The heavyweight. What people don't know:

- **CDX API** — query every captured URL matching a pattern:
  `web.archive.org/cdx/search/cdx?url=target.com/*&output=text&fl=timestamp,original`
  Lists everything ever archived from a domain. Overwhelming and wonderful.
- **Save Page Now** — archive a page *right now* before someone deletes it. Do this
  reflexively during any investigation. Timestamped preservation you can cite later.
- **Snapshot calendars** — the URL bar shows capture density per year; gaps tell
  stories too (a company page vanishing for six months means something).
- **Diffing** — compare snapshots manually or with text-diff tools to see exactly
  when wording changed. Policy pages, team pages, and pricing pages reveal strategy
  through their edits.

## archive.today (archive.ph)

Captures pages Wayback struggles with: JavaScript-heavy content, pages behind some
paywalls, anything robots.txt-blocked. No save-on-demand API abuse concerns — just
paste a URL. Slower but stubbornly thorough. Different crawler = different coverage;
always check both.

## Memento Time Travel

timetravel.mementoweb.org aggregates multiple archives simultaneously — one query,
every archive's coverage. Good first check before diving into individual services.

## What archives actually get used for

- **Deleted posts/tweets/profiles** — subjects scrub after the fact; snapshots
  remember
- **Team page archaeology** — former employees listed before they left (names for
  LinkedIn x-ray searching)
- **Price/history verification** — fraud cases, "it used to say X"
- **Defunct companies** — dissolved businesses still leave archived footprints,
  contacts, filings
- **Changed terms/policies** — legal disputes over what was promised when

## Google Cache is dead

Killed in early 2024. Any tutorial telling you otherwise is outdated. Bing's cache
limps along inconsistently. The archives above are the reliable path now.

## Habits worth building

1. Archive anything important the moment you see it (both services).
2. Screenshot with visible URL + timestamp as backup.
3. Note archive URLs in your case file — evidence needs provenance.
4. Check archives BEFORE contacting/alerting anyone at the target organization.
