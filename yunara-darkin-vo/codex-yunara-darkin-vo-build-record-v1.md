# CODEX BUILD RECORD — Darkin Yunara VO v1

## What this is
A full-coverage voice pack for **base Yunara**: all **170 slots** of `yunara_base_vo_audio` replaced with Yunara's own cloned voice (ElevenLabs clone "Yunara", `Y71uEQKehO4BCUg5Ur9l`, made from her stock lines) performing the Darkin-corruption script. This VO pairs with the Darkin Yunara visual update; ship them together.

## Inputs (GitHub, folder `yunara-darkin-vo/`)
- `wavs-v1/part-*` — zip parts containing all 170 final WAVs, named `<wem_id>.wav`
- `yunara-darkin-voice-script-v1.md` — the script (every line keyed by WEM ID)
- `yunara-darkin-census-v1.tsv` — per-slot census: wem_id, donor duration, channels, rate, category, stock line

## Donor facts (verified by census)
- Bank: base Yunara VO, **170 wems**, all **44.1 kHz**
- Channels: **155 mono / 15 stereo**. The finals MATCH the donor per slot — mono slots ship mono WAVs, stereo slots ship stereo WAVs. Do not fold channels either way (a channel mismatch against the donor profile is a proven silent-pack failure in this pipeline).
- The 15 stereo slots: 1027104361, 168521891, 231536501, 370700415, 37630277, 400850403, 401167869, 620187335, 623790684, 671134915, 752619229, 818025623, 824687815, 941584428, 987866257.

## Encode law (non-negotiable)
- **Official Wwise 2024.1.3 ONLY.** No hand-rolled encoder exists in this pipeline anymore; it caused a shipped crash before. If Wwise is unavailable, stop and report.
- Gates, in order, report each before proceeding:
  1. **Control:** repack the untouched donor bank, confirm it plays stock Yunara in game.
  2. **Sample:** encode ONE line first — `210251572.wav` (champion select) — confirm it plays in game.
  3. **Full build:** all 170 slots, report replaced/total counts (must read 170/170, 0 silent, 0 stock).
- Output fantome name: **Yunara-Darkin-VO-v1.0.0.fantome**
- SKN footer law applies to any mesh work in the visual package (not this VO build): Riot .skn files need the 12-byte zero footer.

## Timing note
Renders ship at **natural length** (house ruling, Ahri precedent). The clone's delivery is unhurried; renders run roughly 1.2–2.6× donor slot length, longest on the joke/taunt/encounter lines. Do NOT time-stretch or speed-fit the clips; League plays VO lines through. If a specific slot misbehaves in game, report the WEM ID and it will be re-cut, not re-timed globally.

## Verification (three states, report separately)
1. File checks pass (counts, formats, no silent files)
2. Fantome delivered / loads in Flint
3. Heard in game (Andrew's test — the only state called "proven")
