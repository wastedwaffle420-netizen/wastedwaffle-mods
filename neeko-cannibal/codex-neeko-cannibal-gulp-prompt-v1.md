# Prompt for Codex — Cannibal Neeko: on-kill corpse gulp (paste-ready)

Task: give Neeko a kill-gated corpse gulp, reusing the kill-detection and
corpse-handling approach already proven in game on the Tahm Kench package
(yesterday). This prompt is the MECHANIC ONLY — no skin model work, no voice
work; those are separate later passes. Build it on stock Neeko first.

THE BEAT (all five, in order, every time Neeko scores a champion kill):
1. A Tahm Kench tongue — the detached tongue asset only, no Kench attached —
   comes OUT OF NEEKO, from her mouth/head position.
2. It travels to the corpse of the champion she just killed and GRABS it.
3. It RETRACTS, pulling the corpse to her across the ground.
4. On arrival the corpse DISAPPEARS — eaten. (Reuse the proven corpse-removal
   route: the named-submesh hiding from the Kench build. The victim-side
   discovery script that enumerates champions/skins/mesh names from the
   installed game is the coverage mechanism here too — the grab has to work
   on any champion, not a test-case list.)
5. A BURP sound plays at the moment the corpse disappears.

REQUIREMENTS AND EDGE CASES:
- Trigger = Neeko's killing blow on an enemy champion. Assists do not fire
  it. Minion/monster corpses: stretch goal only if the same hook generalizes
  cheaply — champions are the requirement.
- Range is hers: she kills at mid range (root + burst, stray Q blooms), so
  the tongue must travel real distances, fast — the corpse's natural death
  dissolve must not beat it. Target the full grab-pull-vanish inside roughly
  a second. If the corpse would despawn first, hold it until the tongue
  completes.
- She can be moving, casting, or already walking away — the tongue fires
  anyway, from wherever she is when the kill lands. If she scores another
  kill while a tongue is still out, the new tongue restarts the beat (no
  queue, no stuck state).
- The tongue is an added effect layer on Neeko. Her own kit VFX, animations,
  and sounds are untouched. Client-side mod, standard rules: nobody else's
  game changes.
- The burp: wire a dedicated sound hook at the vanish moment. Use a
  placeholder gulp/burp from Tahm Kench's stock Devour audio for the first
  proof; the final asset is swappable without touching the logic (Andrew will
  supply or approve the real burp later). The hook existing and firing on
  time is the deliverable, not the placeholder's quality.
- If any mesh file is touched at all, the house law applies: Riot .skn files
  carry a 12-byte zero footer after the vertex data and the loader dies
  silently without it. Prefer zero mesh edits — borrow the tongue asset
  as-is.

VERIFY AND REPORT (three separate states, as always):
1. File checks: package builds clean, file list and what each edit does.
2. Loads: enters a game on Neeko with no crash and no missing-asset errors.
3. SEEN IN GAME (the only "proven"): in a bot game, land a kill and capture
   the full beat — tongue out of her, grab, pull across the ground, corpse
   gone, burp on the vanish. Then the edge cases: a kill at her max range,
   a kill while moving away, a fast double kill. Report which beats held and
   which didn't, per case.
