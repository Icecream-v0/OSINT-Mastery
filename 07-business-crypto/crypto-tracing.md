# Crypto Tracing

Blockchains are public ledgers — every transaction forever, visible to anyone. The
pseudonymity of wallet addresses fools people into thinking they're invisible.
They're not. This is FININT's most technical corner.

## The mental model

- A **wallet address** is a pseudonym, not a person.
- The **ledger** shows every movement between pseudonyms ever.
- Your job: cluster addresses belonging to one actor, then find where clusters touch
  the real world (exchanges requiring KYC, posted addresses, known labels).

## Bitcoin

Explorers: **mempool.space** (clean UI), blockchain.com/explorer.

Techniques:

- **Common-input ownership heuristic** — when one transaction spends multiple inputs,
  those inputs almost certainly share one owner (only the owner can combine them).
  This powers most clustering.
- **Change address tracking** — payments split into "amount to recipient + remainder
  back to self." Following change chains follows the actor.
- **Labels** — ChainAbuse.com community reports mark scam/known addresses;
  mempool.space shows some entity labels.

## Ethereum & EVM chains (where the easy wins live)

**Etherscan** is your home base:

- Address labels/tags name exchange wallets, mixers, known exploiters
- Every token/NFT transfer visible — NFT purchases are identity leaks (people buy
  art matching their public tastes)
- DeBank / Zerion — paste any address, see its entire portfolio across chains.
  Free portfolio viewers feel like surveillance because functionally they are.
- **Arkham Intelligence** — crowdsourced doxxed labels linking addresses to real
  entities. Controversial, powerful, free tier exists.
- **Breadcrumbs.app** — visual tracing graphs, hop-by-hop path mapping.

## The OSINT crossover (your edge over pure chain analysts)

Wallet addresses leak into open sources constantly:

- Bios and linktrees ("Donations: 0xabc...")
- GitHub gists, pastes, forum signatures
- Court filings and scam reports quoting addresses
- NFT marketplace profiles with social links attached

Search any discovered address verbatim across Google/Bing/Yandex before doing
chain work — someone may have already connected it to a name.

## Honest limitations

- **Monero**: effectively opaque by design. Say so; don't pretend.
- **Mixers/tumblers** (Tornado Cash etc.) break direct trails; analysis shifts to
  entry/exit points.
- Chain-hopping (BTC→ETH→Monero) requires cross-chain inference — hard mode.
- Exchange attribution stops at KYC walls: you prove funds reached Binance; only
  legal process gets account names from there.

## The line again

Tracing public ledger data: legitimate. Using found vulnerabilities or "recovery
services" that DM you after theft: those are second scams. Report theft to
authorities and exchanges' fraud desks; document everything for their processes.
