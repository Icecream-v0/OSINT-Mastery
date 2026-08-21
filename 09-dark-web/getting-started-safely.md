# Getting Started on the Dark Web Safely

The dark web isn't mysterious — it's websites reachable only through overlay networks,
Tor being the main one. Investigators monitor it for leaks, stolen data mentions,
and threat activity. Here's how to do that without becoming a casualty.

## Tor basics

- Download **Tor Browser only from torproject.org**. It routes traffic through three
  relays; .onion sites are hidden services inside that network.
- Default settings are sensible. Don't maximize the window (fingerprinting), don't
  install extra extensions, don't torrent through it.
- **Never log into personal accounts over Tor casually** — you're associating your
  identity with Tor usage at minimum, and exit-node traffic (non-onion sites) can be
  observed.
- Serious monitoring work: run Tor inside a VM (Whonix forces ALL traffic through
  Tor — no accidental leaks).

## Finding things

**Search engines:**
- **Ahmia.fi** — indexes onion services, usable from clearnet too. Cleanest start.
- **Torch** — old, huge, noisy index of onions.
- **Haystak** — large index, freemium.

**Verification is critical:** phishing of onion addresses is rampant. **dark.fail**
maintains verified mirror lists for major services. Never trust onion links from
search results alone when money/accounts are involved.

## What's actually there (investigator-relevant)

- **Ransomware leak sites** — groups publish stolen corporate data as extortion.
  **ransomwatch / ransomware.live** track these from the clearnet so you often don't
  need Tor at all for this class of monitoring.
- **Data breach markets** — where stolen databases get sold. Monitor listings for
  your organization's name; do NOT buy. Possession creates legal exposure and funds
  the ecosystem you're defending against.
- **Forums** — fraud/underground communities where threat actors talk. Accessing
  public threads: research. Registering and engaging: undercover work with legal
  implications requiring authorization.
- **News/mirror services** — SecureDrop directories (whistleblower submission
  systems), BBC/NYT onion mirrors for censored regions.

## Bright lines

1. Buying anything illegal = crime, full stop.
2. CSAM: if encountered, stop, preserve nothing beyond minimal evidence, report
   (NCMEC CyberTipline in US, INHOPE hotlines elsewhere).
3. Engaging with fraud communities without authorization can constitute participation.
4. Assume shock content exists; prepare accordingly.

## Legitimate uses worth knowing

Checking whether your own emails/data appear in breach discussions, organizational
threat monitoring, academic research, journalism, and accessing information under
censorship. The dark web is infrastructure — neutral until used.
