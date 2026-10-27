# Prompt for Codex — Kench digestion logic: steal Bel'Veth or Sahn-Uzal?

Paste-ready. Goal: a feasibility verdict, not a build (yet).

---

Investigate whether the dragon-lady Tahm Kench package can borrow real
state-machine logic from two donor systems, working only within the
client mod surface (champion BINs, buffs, particles, audio events,
animation timelines). No new client logic is available; the question is
which vanilla systems can be re-skinned so the player FEELS a digestion
system running.

Donor systems to dump and compare (from the local game files):
1. **Bel'Veth** — her R / Void Coral / True Form logic: how the timer,
   stacks, refresh-on-takedown, and form state are expressed in her
   character and ability BINs (buffs, durations, particle and sound
   hooks). This is the "digestion meter" candidate.
2. **Mordekaiser (Sahn-Uzal)** — his spoils logic: Death Realm stat
   steal and any stack/accumulation structures in his BINs. This is the
   "spoils of the kill, banked on her" candidate.

Target host: Tahm Kench base BINs, especially Devour (R) — what buffs,
timers, or states already fire on a Devour kill that could carry tiers.

Evaluate BOTH branches and say which the files actually support:

- **Branch A — actual digestion.** An R kill starts a real digestion
  state on her. While it runs, humidity cloud particles (Shan Hai
  Scrolls cloud forms, After Hours steam behavior) build around her.
  If the digestion completes — or is interrupted (her death = the fail)
  — it triggers the disposal soundscape: a prepared 35.25s clip
  (kench-disposal-soundscape-v1.mp3 on the wastedwaffle-mods shelf under
  kench-dragon-lady/). Identify which slot the clip could ride
  (kill VO bank? a buff-expiry sound? an emote/recall chain?) and
  whether a 35s clip survives there.
- **Branch B — progress over time.** No fail state: digestion simply
  accumulates over the match (per R kill and/or per minute), cloud
  density tiers up permanently, soundscape fires at the top tier.

Deliverable: a short report — per branch: the exact vanilla hooks found
(file paths, buff/event names), what the player sees and hears at each
tier, what cannot be done and why, and your recommendation. Do not
build anything yet; verdict first.
