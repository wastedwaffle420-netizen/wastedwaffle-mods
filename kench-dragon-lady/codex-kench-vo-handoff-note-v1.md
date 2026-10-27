# Handoff note for Codex — Dragon Lady Kench VO (paste-ready)

Build Kench-Dragon-Lady-VO-v1.0.0.fantome from the 238 WAVs in
`kench-dragon-lady/wavs-v1/` on the wastedwaffle-mods shelf (zip parts;
join with `copy /b part-aa+part-ab+... <name>.zip`).

Full record: `kench-dragon-lady/codex-kench-vo-build-record-v1.md`.
The essentials:

- Donor = tahmkench_base_vo: 238 clips, ALL MONO 44.1k. Encodes must be
  MONO — no stereo upmix (channel mismatch is the known silent-pack
  failure class).
- Script + census + stock transcript are beside the WAVs on the shelf;
  mapping is 1:1 by wem id; categories are content-inferred and
  re-slottable.
- Timing: natural length, no fitting.
- Encode through official Wwise 2024.1.3 ONLY (isolated project).
  Hand-rolled eu5/container-fix is retired.
- Gates in order: (1) untouched-donor control repack plays in game;
  (2) sample line wem 811323419 through the full path, field-level
  compare vs donor and vs D's official-Wwise pack; (3) full build —
  replaced = 238, zero original audio, zero silent slots.
- Report file checks / delivered / heard in game as three separate
  states.
- The gulp mod, digestion-timer logic, and disposal soundscape are a
  separate track (prompt already banked) — not part of this VO build.
