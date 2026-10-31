# CODEX PROMPT — Atsu (Ghost of Yōtei) on Foreseen Yasuo — v3 model pass (refs + face ruling incorporated)

Supersedes v2. Andrew's own reference photos govern wherever they differ from the text below:
- `atsu-ref-fullbody-v1.jpg` — full body, front: the loadout as worn.
- `atsu-ref-face-v1.jpg` — face close-up under the hat.
- `atsu-ref-select-screen-v1.jpg` — character-select art: fur mantle, gourds, wolf (companion, not portable — ignore the wolf).

## MISSION
League of Legends custom skin: **Atsu (Ghost of Yōtei) on Foreseen Yasuo**, a fan tribute for community release. This pass = MODEL + TEXTURES only. Voice, icons, loading screen, profile art: separate later passes, OUT OF SCOPE here.

## THE LOOK (priority order)
1. **The name sash — THE signature.** A long white cloth strip hanging down the FRONT of the waist over the hakama (see fullbody ref): large dark calligraphy glyphs, **one name per section, sections divided by rust/salmon bands**. The names are her six targets, the Yōtei Six: **Saitō, the Oni, the Kitsune, the Snake, the Dragon, the Spider**. Art-director fact: the sash was the first element designed for Atsu and never changed; she wears it in every outfit.
2. **The straw hat — CORE, not optional.** A wide, dark woven kasa with a **ragged, torn edge** (fullbody + face refs: the brim is visibly chewed up on one side), tied with a chin cord knotted in a bow with small dark beads. Her face stays fully visible under it — **no mask, ever**; the hat is how this build keeps her face AND gets the iconic silhouette.
3. **Ginkgo yellow kimono.** Worn, weathered mustard-ochre, brown underlayer at the collar.
4. **Black fur mantle** over the shoulders/upper chest (both refs) — heavy, shaggy, black.
5. **Dark chest plate** under the fur (fullbody ref): a plain dark metal breastplate worn over the kimono.
6. **The shamisen on her back** — in the refs you read it as the long neck + pegged headstock rising over her shoulder, body flat on the back. That silhouette is the requirement.
7. **Twin gourds** at the right hip (both refs): two round tan gourds (one larger) hanging from the belt on a cord.
8. **Her face** (face ref): natural, no glamour — strong brows, freckles, a small beauty mark, loose black hair strands framing the face, hair pulled up/back (top knot under the hat). **The read to keep, in Andrew's words: "very pretty in an ethnic way"** — pretty the way a real person is pretty. A normal Japanese peasant face of the period: ethnically specific, ordinary, unstyled. NOT generic-pretty, NOT idol/K-pop-pretty, no beautification or smoothing toward model features.

## PHASE 0 — DISCOVERY (report before editing)
- Locate the installed game's Foreseen Yasuo assets. Report: skin slot/id; full inventory to be touched (.skn, .skl, all diffuse/texture files, particle/VFX files bound to the spectral arm).
- Back up untouched stock first. Never edit the only copy.

## BUILD SPEC
1. **Kimono:** recolor Foreseen's pale wrap robe to the worn ginkgo yellow; brown underlayer at collar/openings. Weathered, outdoor-lived — no clean ceremonial silk.
2. **Fur mantle:** black shaggy fur across the shoulders and upper chest. Use texture (dense dark noise/clumping) on the robe's shoulder region; if Foreseen's geometry has any shoulder/scarf mass, exploit it. If a thin added shell is cleaner than texture alone, a modest mesh shell is acceptable here — your call, report which you did.
3. **Chest plate:** dark plain breastplate panel over the torso front, under the fur line (texture is fine if the torso UV allows a clean panel).
4. **Hakama:** keep Foreseen's baggy silhouette; recolor dark blue-grey and add the subtle **seigaiha wave pattern** visible in the fullbody ref (low-contrast, texture-level).
5. **The sash:** mount on Yasuo's waist straps. The fullbody ref is the target: one long white inscribed strip hanging down the front to below the knees, rust bands dividing six calligraphy sections. Geometry that hangs straight is ideal; if the base won't hang a strip, do the strongest texture version across the existing straps AND say so in the report.
6. **Hat (mesh addition — expected, not gated):** simple wide kasa disc, dark woven texture, with the torn/ragged edge from the refs (an irregular notch cut from one side of the brim — alpha or geometry, your call); chin cord with the bow + beads at the throat. Sits so her face is fully visible. If it fights the ponytail, the ponytail yields (shorten/tuck) — the hat outranks the tail.
7. **Hair:** black (deep brown-black) everywhere; ponytail may be shortened per #6. Face-framing loose strands if the hair cards allow.
8. **Face (texture):** remove beard/stubble entirely; follow the face ref — strong brows, freckles, beauty mark, unmade-up. **Direction: a normal Japanese peasant face, "pretty in an ethnic way" (see THE LOOK #8). Do NOT beautify: no feature softening toward generic/model prettiness, no idol styling, no skin smoothing. Ordinary and real IS the target.** Evoke her; no photoreal likeness chase.
9. **Shamisen (mesh addition — gated):** body flat on the back + neck rising over the shoulder with the pegged headstock, per the refs. Simple wood textures; silhouette sells it. **Gate:** if rigging won't come clean in reasonable effort, defer it, ship the rest, flag it plainly. Do not block the build on it.
10. **Gourds (mesh addition — cheap, do with the hat):** two round tan gourds at the right hip on a cord. Simple spheres, slight squash, banded texture. Defer only if all prop work fails; report it.
11. **Spectral arm:** KEEP Foreseen's spectral arm (it maps to her Onryō ghost aura); recolor teal → pale spectral blue, texture/emissive only, no particle rebuild.
12. **Katana:** keep the blade; twin-wolf motif on the guard/handle wrap in texture (her katana's mark for her brother). Subtle.

## HARD LAWS
- **SKN FOOTER LAW:** Riot .skn files end with a 12-byte zero footer after the vertex data. Every .skn you write MUST carry it or the game silently dies on load. Check before packaging.
- Stock backups for everything; all edits reversible.
- Package name: `Yasuo-Atsu-Ghost-of-Yotei-v1.0.0.fantome`

## OUT OF SCOPE
Voice; icons; loading screen; profile art; particle rebuilds; splash; any mask; the wolf.

## VERIFY — three states, reported separately
1. **File state:** builds; every .skn footer-checked; changed-vs-stock file list.
2. **Load state:** installs and loads into a game without crashing (Practice Tool fine).
3. **Visual state:** screenshots front / back / profile at game zoom (sash is front, shamisen is back, hat reads in profile). State which states you actually reached. "Built" ≠ "seen in game."

## REPORT FORMAT
Phase 0 inventory → per-spec-item results (1–12, deferrals with reasons) → three verification states → Andrew's open decisions.
