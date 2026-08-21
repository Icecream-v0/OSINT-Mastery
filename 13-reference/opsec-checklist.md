# The OPSEC Checklist

Print this. Tape it to your monitor. Run it before every investigation session —
especially the "quick look" ones, which are where most people get burned.

## Before you start

- [ ] **Threat model check:** who might notice me looking at them, and what
      happens if they do? (Re-read `01-foundations/your-opsec-first.md` — your
      protections must match this answer.)
- [ ] **Dedicated environment ready:** investigation browser profile or VM is
      separate from personal life. No personal accounts logged in anywhere on it.
- [ ] **VPN / Tor decision made deliberately** for this specific target, not by
      habit.
- [ ] **Persona check:** if using a sockpuppet, it's aged, consistent, and its
      recovery email/phone can never be traced back to you.
- [ ] **Logging plan:** evidence folder and note file created *before* browsing.
      You will forget to screenshot later.

## While you work

- [ ] Screenshot with URL bar and clock visible; archive pages as you go.
- [ ] Never log into anything real from an investigation session.
- [ ] Don't view target-linked content carelessly: notification traps,
      canary links, and view-tracking pixels exist. Preview documents offline;
      strip tracking from shared docs before opening.
- [ ] No downloads without sandboxing (`10-toolkit/building-your-rig.md`).
- [ ] Watch your own emotional state. Anger and excitement produce sloppy clicks.

## When you stop

- [ ] Evidence saved: screenshots named consistently, URLs archived, hashes of
      key files recorded.
- [ ] Session wiped or VM reverted.
- [ ] Notes updated while memory is fresh — tonight-you owes nothing to
      three-weeks-from-now-you except good notes.
- [ ] Any finding that surprised you written down, including what would
      disconfirm it (`verification-and-analysis.md`).

## Red flags that mean STOP

- You're about to log into any account tied to your real identity.
- You're about to contact the target or anyone near them.
- You're considering buying data, credentials, or access.
- You've stopped taking notes because "I'll remember."
- The target is a person who could be endangered by exposure rather than a
  system, company, or public figure acting in a public capacity.

Each of these is a hard boundary, not a judgment call. Re-read
`01-foundations/law-and-ethics.md`.
