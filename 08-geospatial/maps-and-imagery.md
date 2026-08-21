# Maps & Satellite Imagery

GEOINT at scale. Where photo geolocation (05-images-video/) works single images,
this file covers area analysis, change detection, and mapping tools professionals
lean on.

## Satellite imagery

- **Google Earth Pro** (free desktop app) — the historical imagery timeline slider is
  criminally underused: scrub years to see construction appear, structures vanish,
  terrain change. Also measures distances/areas precisely.
- **Sentinel-2 via Copernicus Browser / Sentinel Hub Playground** — free 10m
  resolution imagery refreshed every ~5 days globally. When Google's imagery is
  stale, Sentinel is current. Bands beyond visible light (false-color vegetation,
  burn scars) come free.
- **Sentinel-1 radar** — sees through clouds and darkness. Conflict monitoring
  depends on it.
- **zoom.earth** — near-live weather satellite + wind maps. Timestamped weather
  verification ("was it really foggy that morning?").
- **Planet Labs** — daily whole-earth imaging; paid, but their free services show
  event areas after disasters.

## Change detection (the Bellingcat method)

Compare pre-event vs post-event imagery of the same coordinates:

1. Fix exact coordinates (geolocate first).
2. Pull oldest available → newest imagery.
3. Document changes: craters, vehicle scars on grass, disturbed earth, new
  structures, burned areas.
4. Corroborate with other sources before publishing conclusions.

This technique verified atrocities, missile strikes, and hidden construction sites
when official sources said nothing.

## Mapping platforms

- **OpenStreetMap + Overpass Turbo** — queryable map database: "all fuel stations
  within 2km," "every water tower in region X." Overpass queries answer questions
  no GUI map can.
- **Yandex Maps** — superior coverage/street-level in CIS countries.
- **Apple Look Around** — surprisingly good in places Google lacks detail.
- **Mapillary / KartaView** — crowdsourced street imagery where Google never drove:
  rural roads, developing regions, recent coverage.
- **Google Maps user photos** — contributors upload geotagged photos constantly;
  free ground-truth imagery for specific spots.

## Coordinate literacy

Learn to read/convert: decimal degrees (DD), degrees-minutes-seconds (DMS), Plus
Codes (Google's shareable grid), MGRS (military). Conversions via
`coordinatesconverter.net` style tools. Wrong-format coordinates have embarrassed
professionals publicly; double-check formats before citing.

## Terrain tools

PeakVisor (skyline ID), CalTopo (US terrain overlays), Wikimapia (old but has
user-labeled features nothing else marks).
