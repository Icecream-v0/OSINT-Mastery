# Beyond Google

Here's an uncomfortable fact: Google indexes well under half the web, and its index
is actively hostile to some content types. Professionals run the same query across
multiple engines because each sees a different web.

## The engines that matter

**Yandex** — criminally underrated in the West. Russian company, different index,
dramatically better than Google at two things: face similarity search and imagery
from Eastern Europe/CIS regions. If you geolocate or identify people, Yandex Images
is mandatory, full stop.

**Bing** — Microsoft's index differs meaningfully from Google's. Better at some
corporate/document content, has its own `ip:` operator for finding sites on a server,
and powers DuckDuckGo partially. Also: Bing still shows cached-ish views of some
pages Google won't touch.

**DuckDuckGo** — privacy-friendly front end over Bing plus its own crawler. The killer
feature is **bangs**: type `!g query` for Google, `!b` for Bing, `!w` Wikipedia,
`!yt` YouTube. It's a command line for the web. Set it as your default and stop
switching tabs.

**Mojeek** — small UK engine with a genuinely independent index. Results are weaker
overall but occasionally surface things literally nothing else has. Worth a pass when
Google and Bing come up empty.

**Startpage** — Google results through a proxy without tracking. Useful when you want
Google's index but not Google's personalization or logging tied to your session.

**SearXNG instances** — self-hostable metasearch that queries many engines at once.
Public instances exist everywhere; pick one that doesn't log.

## Specialized search surfaces

These aren't general engines but they answer questions Google can't:

- **Internet Archive (archive.org)** — deleted websites, old software, books.
- **GitHub code search / grep.app** — code containing emails, keys, domains. Leaked
  credentials in public repos are embarrassingly common.
- **Google Scholar** — academic papers. Authors leave affiliations, co-authors, and
  often contact emails. Great for expert identification.
- **Telegram search** — telemetr.io and similar directories index channels. Huge in
  certain regions and conflict zones.
- **Paste sites** — pastebin-style sites host leaks and confessions. Search via
  Google with `site:pastebin.com` or dedicated scrapers.

## The multi-engine habit

Real workflow for a person search, in order:

1. Google (exact name in quotes + city + any known handle)
2. Bing (same query — note what's new)
3. Yandex (name AND photo if you have one)
4. DuckDuckGo bangs for platform-specific sweeps
5. Mojeek if everything above failed

Each pass takes two minutes. One of them will usually break the case open, and it's
rarely the same engine twice. That's the point.
