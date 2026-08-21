# Reddit, TikTok & YouTube

The pseudonymous platforms. People say things here they'd never attach to their
Facebook — which makes them invaluable and dangerous in equal measure.

## Reddit

**Pullpush.io** — the successor to Pushshift, the legendary archive of essentially
all Reddit comments/posts. Query any username's full history, search comments by
keyword/subreddit/date. This is the single most powerful Reddit tool; learn its API
syntax.

**Redditsearch-style UIs** — friendlier frontends over similar data for quick manual
searches.

**Old.reddit.com** — the old interface exposes things new Reddit hides: full comment
histories are easier to traverse, some removed content shows `[removed]` vs
`[deleted]` distinctions that matter (removed by mods = recoverable via archives;
deleted by user = gone).

**Reveddit / rareddit patterns** — show what was removed and where.

**User analysis technique:** a target's comment history is a psychological profile —
locations mentioned casually ("my commute to Austin"), complaints about employers,
hobbies, medical details, arguments they lost. Sort by controversial; people's
worst moments are their most identifying.

**Subreddit overlap** — users active in r/OSINT AND r/farming tell you something.
Tools exist for subreddit-overlap mapping; or just read post histories manually.

## TikTok

- **Web viewers** (urlebird-type) browse public profiles without the app. They break
  often; find live ones via current searches.
- **Geotagged content** — TikTok location pages aggregate videos filmed at specific
  places. Useful both for finding a subject's haunts and for geolocating *other*
  footage.
- **Download without watermark** tools preserve original quality for frame analysis
  (05-images-video/).
- Comments on local viral videos are full of locals confirming locations — useful
  during geolocation challenges.

## YouTube

**Mattw's YouTube Geofind** — searches videos by geotag coordinates/radius. When
someone films an event, Geofind finds every angle of it.

**Comment mining** — comment search tools and simple `site:youtube.com` dorks find
where a name/handle appears across millions of comments. Commenters leave emails in
"business inquiries" lines constantly.

**Channel intelligence** — Social Blade for stats/trends; "About" tab reveals linked
accounts; community posts leak opinions between uploads.

**yt-dlp** — download everything: videos, subtitles (mined for names/places),
metadata including GPS tags on some mobile uploads. Archive early, subjects delete.

## The cross-platform habit

Bios link everything now — Linktree, Beacons, Carrd pages consolidate someone's
entire footprint behind one URL. When you find one platform account, hunt for the
link-in-bio page first; it usually hands you every other account voluntarily.
