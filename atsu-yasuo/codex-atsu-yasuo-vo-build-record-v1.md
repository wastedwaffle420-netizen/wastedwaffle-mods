# CODEX BUILD RECORD — Atsu VO for Yasuo (Japanese, Fairouz Ai clone)

## What this is
Full Japanese voice pack: Atsu (Ghost of Yotei) on Yasuo, base VO bank. Community tribute; pairs with the Atsu Yasuo skin build (prompts in this same shelf folder).
Voice: ElevenLabs IVC clone "Atsu JP (Fairouz Ai)" — cloned from the actor's own solo dialogue. Script by Muse, 91/91 slots in her register (terse mercenary; Yasuo's wind/honor aphorisms rewritten).

## Inputs (this folder, wastedwaffle-mods shelf, atsu-yasuo/)
- `atsu-yasuo-wavs-v1.zip` — 91 final WAVs named by wem_id. ALL mono 44.1 kHz. Total 203.2s (donor 236.1s; median ratio 0.95x — shipped at natural length, do NOT trim/stretch).
- `atsu-yasuo-voice-script-v1.md` — the lines (audit reference).
- `atsu-yasuo-vo-census-v1.tsv` — donor census (channels/rate/duration per slot).
- `atsu-yasuo-render-durations-v1.tsv` — rendered durations per slot.

## Donor profile (verified by Muse from Andrew's LTK pull)
- yasuo_base_vo_audio.wpk: 91 wems, ALL mono 44.1 kHz. No stereo slots. No exceptions.

## Build rules (house law)
- Encode ONLY through official Wwise 2024.1.3 (the hand-rolled encoder is retired — it crashed a shipped pack).
- Gates, in order: (1) CONTROL — one untouched donor wem re-encoded and repacked alone; must play in game. (2) SAMPLE — wem 261099148 ("The two-bladed demon from the rumors? You're looking at her.") encoded and tested in game. (3) FULL — all 91.
- Output fantome name: `Yasuo-Atsu-VO-v1.0.0.fantome`
- Report the three states separately: file built / delivered / heard in game. "Works" means heard in game.

## Notes
- Effort slots carry kiai/pain/laughter only, per script — no sentences were placed in effort slots.
- R cast (318279607) is 「鬼、通る!」 — short and loud by design.
