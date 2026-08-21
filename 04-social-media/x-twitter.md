# X / Twitter

X (still "Twitter" in your muscle memory) got much harder after the 2023 API lockdown.
Most classic tools died. The platform remains an intelligence goldmine anyway — you
just work differently now.

## What still works

**Advanced search operators** — still the backbone, partially available logged-out,
fully logged-in:

```
from:username since:2024-01-01 until:2024-06-01
from:username filter:replies min_faves:10
"exact phrase" geocode:51.5074,-0.1278,10km
to:username -from:username          # conversations they're in
from:username filter:media          # their images/video
```

Search replies and likes — people reveal allegiances in replies they'd never post
as original content.

**Direct URL patterns** — even with search degraded, hitting
`x.com/username/status/ID` directly works. Old tweet IDs can be enumerated and fed
to archives.

**The Wayback Machine** — profiles and tweets get snapshotted. Deleted tweets often
survive here and on archive.today. Search both by profile URL and by direct status
URLs found anywhere.

**accountanalysis.app** — account stats, posting patterns, growth anomalies. Useful
for spotting bot networks and persona accounts.

## What died (so you don't waste time)

- Nitter instances — mostly dead since early 2024 API changes.
- Twint, snscrape — broken against current X.
- Free API access — gone; paid tiers exist for serious tooling.

Third-party viewer sites (twstalker-style) appear and vanish monthly. Treat them as
untrusted: never log in through them, assume they log everything.

## Strategy notes

- **Follower/following overlap** is how you confirm alias networks. Two accounts
  sharing an unusual follower cluster likely share an operator.
- **Pinned tweets and bios** change over time — archive them early in an engagement;
  subjects scrub histories once alerted.
- **Community Notes, quote tweets** — quote tweets of a controversial post surface
  critics and supporters alike; great for mapping opinion networks around a subject.
- **Lists** — public lists others built about a topic/community are pre-made
  intelligence collections. Search `"list"` mentions of key terms.

## Cross-platform reality

X bios link everywhere: Linktree, Telegram channels, GitHub. Follow every outbound
link. And remember X posts get indexed by Google — dorks like
`site:x.com "username" "email"` sometimes surface things platform search hides.
