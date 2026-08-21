# Geolocating Photos

The flagship OSINT skill. Given a photo with no context, determine where on Earth it
was taken. Bellingcat made this famous; Trace Labs cases get solved with it daily.
It looks like magic from outside and like methodical checklist work from inside.

## The method: catalog, hypothesize, verify

**Step 1 — Catalog every clue.** Before any searching, list what the image contains:

- Text: signs, shop names, license plates, phone numbers (country codes!), language,
  script direction, dialect
- Vehicles: makes common in region, plate formats/colors, which side of road cars
  drive on
- Infrastructure: utility pole styles, bollard types, fire hydrant designs, manhole
  covers, road line colors, guardrail styles — every country has signatures
- Nature: vegetation, terrain, sun position/shadow length (time + hemisphere),
  snow/rain patterns
- Architecture: brick types, roof styles, window shapes, construction era

**Step 2 — Hypothesize a region.** Language + plates + driving side usually narrow
to a country or three within minutes.

**Step 3 — Verify against street-level imagery.** Google Street View, Yandex Maps
(better for CIS), Apple Look Around, Mapillary/KartaView (crowdsourced, covers where
Google doesn't). Walk virtual streets until signage matches. Then match building
facades exactly.

## The tools that do heavy lifting

- **Google Earth Pro** (free desktop app) — historical imagery slider is gold:
  compare locations across years to confirm construction timelines.
- **SunCalc.org** — given shadow direction/length, computes time-of-day/date and
  confirms hemisphere. Shadows don't lie; people do.
- **PeakVisor / PeakBagger** — mountain skyline identification. A visible ridgeline
  can pin you within kilometers.
- **OpenStreetMap + Overpass Turbo** — query "all water towers within 5km of X" style
  questions. When you need "which of these 40 towns has a blue mosque AND a rail
  line," Overpass answers.
- **Sentinel Hub Playground / Copernicus Browser** — free satellite imagery at 10m
  resolution, updated every few days. For recent events where Street View is stale.

## Worked example (abbreviated)

Photo of a market street. Cyrillic signage but Latin "PIZZA" sign → Balkans? Red
plate with regional code format → Serbia. Trolleybus wires → city with trolleybuses.
Overpass query narrows Serbian trolleybus cities to Belgrade. Street View walking
along the market until the yellow facade matches. Done: coordinates found in under
an hour.

## Training resources

- **GeoGuessr** daily challenges — the standard trainer
- **Plonk It guide** — free, systematic country-by-country meta (meta = identifying
  clues like camera generation, car meta, domain colors)
- **Quiztime** — real quizzes from professional geolocators
- **Bellingcat's geolocation challenges** — actual published case work

Do GeoGuessr daily for a month and you'll never look at a photo the same way again.
That's not a figure of speech — you'll start reading utility poles at breakfast.
