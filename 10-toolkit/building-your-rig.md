# Building Your Investigation Rig

Your setup determines what you can safely do. Here's a pragmatic build path from
"curious beginner" to "handles sensitive engagements."

## Level 1: Curious (costs nothing)

- Firefox with **containers extension** — separate cookie jars per persona/context
- Separate browser profile for investigations only: no personal extensions, autofill
  off, history cleared aggressively
- **uBlock Origin** — blocks trackers that would log your research behavior
- Obsidian or Joplin for local case notes
- A VPN if your threat model includes targets who check IPs

## Level 2: Practitioner (~free, more discipline)

- **VirtualBox or VMware Workstation Pro** (now free for personal use)
- One VM per risk class: general research VM, hostile-target VM, sock-puppet VM
- Snapshot before each engagement, roll back after
- Password manager with separate vaults per persona (KeePassXC databases work well)
- ExifTool, yt-dlp, gallery-dl installed in the VMs
- Hunchly trial during real cases to feel what evidence-capture discipline adds

## Level 3: Professional (when money/client work is involved)

- Dedicated hardware for sensitive ops — never your daily driver
- **Whonix** VMs for Tor-forced workflows (leak-proof by design)
- Anti-detect browsers (Multilogin, GoLogin) when sock puppets must survive
  fingerprinting — expensive but they solve problems containers can't
- Mobile hotspot on an anonymized plan for network separation
- Encrypted case storage: VeraCrypt containers, hashed evidence files, documented
  chain of custody
- Maltego CE or paid transforms for link analysis at scale

## Sock puppet construction (the honest guide)

1. Create email via different network than you'll use later
2. Build persona doc: name, age, city, job, interests, writing style sample
3. AI-generated profile photo (never a real person's face)
4. Register platform accounts; let them AGE — weeks minimum before operational use
5. Light normal activity: follow big accounts, occasional posts
6. Never access two personas from the same session/browser fingerprint
7. Never, ever cross-contaminate with your real identity

Platform TOS technically prohibits fake accounts everywhere. That's the accepted
gray zone of the profession — document your justification per engagement.

## Habits that matter more than gear

- Screenshot everything immediately (URL bar + clock visible)
- Archive pages as you read them (Save Page Now reflex)
- Write findings same-day; memory lies
- Hash evidence files (SHA-256) the moment they're saved
- Keep an investigation log: timestamps, actions, queries run

The best rig in the world doesn't save an investigator who didn't document. Build
the habits first; upgrade the hardware when the work demands it.
