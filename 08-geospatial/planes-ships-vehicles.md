# Planes, Ships & Vehicles

Moving assets broadcast their position constantly. Aircraft, vessels, and even
trains transmit tracking signals anyone can receive — and registries tie those
assets to owners. This is GEOINT's real-time branch.

## Aircraft

**Tracking platforms:**

- **ADS-B Exchange** — the investigator's choice: unfiltered, shows everything
  including military and private flights other services hide
- **FlightRadar24 / FlightAware** — friendlier UIs; FlightAware shows registration
  history and routes by tail number
- **globe.adsbexchange.com** — free web interface, no account needed

**The registry pivot (the powerful part):**

- **FAA Registry (registry.faa.gov)** — every US-registered aircraft: owner name,
  address, registration history. Search by N-number OR owner name. Free.
- Non-US registries vary; many are searchable (UK CAA, Transport Canada).

Famous applications: celebrity jet trackers (the ElonJet saga), oligarch jet
monitoring after sanctions, identifying surveillance flights over protest areas.

**Technique:** spot an interesting aircraft → tail number → FAA/registry → owner →
shell company → corporate records (07-business-crypto/). The chain from "plane
landed somewhere odd" to "owned by LLC X" takes minutes.

## Vessels

- **MarineTraffic / VesselFinder** — AIS ship tracking: positions, ports, ownership
  via IMO number lookup
- **IMO number** = a ship's lifelong identity, more stable than names (ships get
  renamed constantly to dodge sanctions/history)
- **Equasis** — free ownership/management history for commercial ships
- **ShipSpotting.com** — photo history per hull: who photographed it where, when

**AIS spoofing is real:** Russian naval vessels famously transmitted fake positions
(see the HMS Defender/Sevastopol incident). Cross-check AIS against satellite
imagery and port cameras before trusting positions. Gaps in AIS coverage near
sensitive locations tell their own stories.

## Vehicles

- **License plate lookups are legally restricted** (DPPA in the US limits who can
  query DMV data). Paid aggregator sites exist in gray zones — know your local law.
- **Plates as geolocation clues instead:** EU plates encode country + regional
  codes; diplomatic plates use country codes (CD = corps diplomatique); US states
  narrow regions. In photo geolocation, a readable plate often cracks the case.
- **Parking apps / transit cameras**: not public sources; ignore anything requiring
  improper access.

## Trains & transit

- **OpenRailwayMap** — infrastructure detail everywhere
- Live train maps exist per country (rail forums maintain lists)
- Train station appearances in photos geolocate well — stations are heavily
  photographed landmarks with distinctive signage

## The judgment note

Real-time movement data of military forces during active conflicts is sensitive.
Publishing precise positions of troops can get people killed — responsible
practitioners think hard about amplification, delay, and aggregation before
sharing. Technical capability never settles the publication question.
