# Your OPSEC Comes First

Before you investigate anyone, understand this: sophisticated targets watch their own
footprints. View a LinkedIn profile logged in, and they see your name. Visit a site
you shouldn't have from your home IP, and it's in their logs forever. Get sloppy
linking your real identity to a sock puppet, and one careless click burns months of
work — maybe puts you in danger.

This file is about not becoming part of the story.

## Layer 1: Network

- **VPN from a reputable provider** (Mullvad, IVPN) for general browsing. Understand
  what it does: hides your IP from the target, moves trust to the VPN provider.
- **Separate connection for sensitive work** — mobile hotspot on a plan that isn't
  tied to your name if the stakes justify it.
- Never research hostile targets from corporate or university networks. Their SOC
  sees everything.

## Layer 2: Browser

- **Dedicated browser profile** (or better, a separate browser) used only for
  investigations. No personal extensions, no autofill, no saved passwords, no sync.
- Firefox containers let you run multiple isolated sessions simultaneously — one per
  persona. Free and effective.
- Assume browser fingerprinting works. If a target runs tracking, a fresh profile
  with your exact hardware/font/screen combo can still be recognized. Serious work
  happens in VMs.

## Layer 3: Machines

- **Virtual machine snapshots** — snapshot before an op, roll back after. VirtualBox
  is free; VMware Workstation Pro is now free for personal use too.
- **Whonix** routes all VM traffic through Tor by design, for the heavy stuff.
- For most work you don't need paranoia — you need separation. Personal life and
  investigative life never share a login, ever.

## Layer 4: Personas (sock puppets)

When you need to interact — follow, friend, join a group, view stories — you use a
persona:

- Email created via a different network than the one you'll use daily.
- A consistent fictional identity: name, birth year, city, interests. Write it down
  and stay in character forever.
- Profile photo: AI-generated faces are standard practice these days. Never use a
  photo of a real person.
- Age the account. Brand-new accounts viewing stories and joining groups stand out.
  Create personas weeks before you need them.
- **Never cross-contaminate.** One accidental login from your real account, one
  shared username habit, one identical typo across personas — burned.

## Layer 5: Behavior

- Don't view Instagram stories, don't like posts, don't zoom-profile-view. Passive
  collection only until interaction is truly necessary.
- Match your persona's timezone and activity patterns.
- Don't tell people what you're investigating. Not friends, not Discord servers.
  Loose talk has ended careers and court cases.

## Layer 6: Your notes and evidence

- Case files in local-first tools (Obsidian, Joplin) rather than cloud docs tied to
  your real name.
- Encrypt anything sensitive (7-Zip AES or VeraCrypt volumes).
- Screenshots should show URL bar and clock. Hash critical evidence files (SHA-256)
  so you can prove they haven't been altered — this matters enormously if things go
  legal.

## The honest truth

Full operational security is a spectrum, and cost scales with threat. Investigating a
scam shop needs a VPN and a separate profile. Investigating a cartel needs a dedicated
machine bought with cash. Calibrate to the actual risk, but never drop below
"separate identity for interactions."
