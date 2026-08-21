# WHOIS, DNS & IP Intelligence

Every domain and IP address leaves records. This is the technical backbone of
investigating websites, scams, phishing infrastructure, and anonymous actors.

## WHOIS — who registered a domain

- **ICANN Lookup / who.is / whoisds** — registration date, registrar, name servers,
  contact info (when not redacted).
- **Privacy proxies are normal now** (post-GDPR most registrations hide owners).
  The play: **historical WHOIS** via DomainTools, SecurityTrails, or WhoisXML —
  pre-2018 records often show real names/emails. Old whois data convicts phishers
  weekly.
- **Registration patterns** — domains registered in bulk batches, or seconds apart,
  link to the same operator. Registrars' creation dates are free timeline evidence.

## DNS records — what a domain points to

- **DNSDumpster** — free visual map of a domain's DNS footprint: subdomains, mail
  servers, hosting. First stop always.
- **SecurityTrails** — historical DNS: every IP the domain ever resolved to, deleted
  subdomains, old nameservers. Historical pivots find sibling sites of scammers.
- **ViewDNS.info** — reverse IP lookup: what else lives on this server? Shared
  hosting neighbors often share an operator.
- **crt.sh** — certificate transparency logs. Every SSL cert issued for a domain is
  logged forever, including internal subdomains like `dev.target.com` nobody meant
  to publish. Subdomain enumeration goldmine; costs nothing.

## IP intelligence

- **Shodan** — search engine for internet-connected devices. Find exposed cameras,
  databases, industrial systems, and fingerprint servers by banner. Also great:
  `ssl.cert.subject.CN:target.com` finds servers by certificate even on different IPs.
- **Censys** — Shodan's academic cousin, arguably better structured data.
- **ipinfo.io / bgp.he.net** — ASN ownership, hosting provider, geographic data.
  bgp.he.net is underrated for mapping network relationships.
- **AbuseIPDB** — reputation: has this IP been reported for attacks/spam?

## Pivoting infrastructure

The pro move is linking supposedly-unrelated assets:

1. **Same Analytics/Meta pixel IDs** across sites → same operator (PublicWWW searches
   source code for these snippets).
2. **Favicon hashes** — Shodan matches servers by favicon hash; lazy phishers reuse.
3. **Identical whois email + different domain** → historical records again.
4. **Shared IP history** via SecurityTrails timelines.
5. **Code reuse** — PublicWWW/Wappalyzer fingerprint tech stacks; identical custom
   code = same developer.

## theHarvester & Amass

CLI classics for bulk collection: emails, subdomains, hosts from public sources
(search engines, cert logs, DNS). Amass does deep enumeration for authorized
engagements. Both free, both in Kali, both worth learning properly.

## Legal note

All of the above queries public records about infrastructure — fully legal. Active
scanning/port-knocking targets crosses into authorization-required territory
(see 01-foundations/law-and-ethics.md). Passive recon only unless you have permission.
