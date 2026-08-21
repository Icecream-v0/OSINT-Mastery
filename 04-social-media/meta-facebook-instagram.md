# Facebook & Instagram

Meta platforms are locked down harder than anywhere else, but they hold the richest
real-identity data on earth. You work around the walls.

## Facebook

**X-ray search first.** Google sees pages login-walls hide:

```
site:facebook.com "John Smith" "Chicago"
site:facebook.com "John Smith" (site:facebook.com/groups OR site:facebook.com/pages)
```

**Page Transparency** — every page's tab shows ad spend, country of admins, and
history. Fake "local business" pages run from elsewhere get exposed here instantly.
The Ad Library (facebook.com/ads/library) is free and searchable without login —
political and issue ads especially are a treasure trove.

**mbasic.facebook.com / m.facebook.com** — stripped-down mobile versions sometimes
render content the main site login-walls. Flaky, but costs nothing to try.

**Groups** — membership lists are mostly hidden now, but group *posts* by a subject
are x-ray searchable. Niche hobby groups are where fake personas slip up: the
scammer using a stock photo still posts in a fishing group about their real life.

**Photos** — uploaders' tagged photos surface via Google Images with
`site:facebook.com` queries even when in-platform search won't show them.

## Instagram

**Profile photo full-size trick** — replace nothing, just right-click → open image
in new tab, or use `imginn`-style viewers (they churn constantly; current ones found
via "instagram viewer" searches — never log in through any of them).

**Tagged photos** — visible on web profiles under the tagged tab for public accounts.
Tags map real-world relationships better than followers do.

**Stories require login** — this is where sock puppets earn their keep (see
01-foundations/your-opsec-first.md). Aged persona account, passive viewing only,
never interact from anything connected to you.

**Instaloader** (CLI) — archives public profiles: posts, captions, comments.
Captions matter: locations geotagged in old posts, friends named in captions,
routines described over months of posting.

## The relationship-mapping principle

On both platforms, **commenters > followers**. Followers are noise; consistent
commenters/likers between two accounts prove connection. Build network maps from
interaction patterns, not friend counts.

## The burn warning

Everything here assumes passive collection. The moment you follow, like, or view
stories from an account, you've told the target someone is looking. Decide that's
acceptable *before* doing it, not after.
