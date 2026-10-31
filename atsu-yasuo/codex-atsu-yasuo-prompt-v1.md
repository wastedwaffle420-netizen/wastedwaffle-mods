# CODEX PROMPT — Atsu (Ghost of Yōtei) on Foreseen Yasuo — v1 model pass

## MISSION
Build a League of Legends custom skin: **Atsu, protagonist of Ghost of Yōtei, on Foreseen Yasuo** — a fan tribute for the modding community (RuneForge release planned). This pass is the MODEL + TEXTURES only: make Yasuo read as Atsu at game zoom. Voice, icons, loading screen and profile art are separate later passes and are OUT OF SCOPE here.

Andrew supplies reference images of Atsu (default Onryō Armor, default dye) in the project folder. Where a detail is not visible in the references, follow the written spec below.

## THE LOOK (what "iconic Atsu" means — in priority order)
1. **The sash of names (THE signature).** Atsu wears a cloth sash inscribed with the names of her six targets, the Yōtei Six: **Saitō, the Oni, the Kitsune, the Snake, the Dragon, the Spider**. Sucker Punch's art director: the sash was the first element designed for her and never changed; it is present in every outfit. Render it as hanging cloth strip(s) at the waist with vertical calligraphy — six distinct name-strips. At League zoom the glyphs can be stylized brush strokes, but the strips must be visibly THERE and visibly INSCRIBED.
2. **Ginkgo yellow.** Her kimono is a worn, weathered ginkgo-leaf yellow (mustard-ochre, lived-in, not bright) over a brown underlayer. Yellow is her identity color.
3. **The shamisen on her back.** Her mother's instrument, present in all key art — the one true mesh ADDITION in this build (see Build Spec).
4. **Her face, NO MASK.** Deliberate design ruling: Atsu's face is what makes her Atsu and not a nameless ghost. No mask, no face covering, ever, in this build.
5. **Black hair in a knot/tail, Lone Wolf's straw hat OPTIONAL** (stretch goal only, see below).

## PHASE 0 — DISCOVERY (report before editing)
- Locate the installed game's Foreseen Yasuo assets. Report first in your final report: the skin slot/id you found, and the full inventory you will touch: .skn, .skl, all diffuse/texture files, and any particle/VFX files bound to Foreseen's spectral arm.
- Back up the untouched stock files before any edit. Never work on the only copy.

## BUILD SPEC
1. **Robe/kimono:** recolor Foreseen's pale wrap robe to the worn ginkgo yellow above; brown underlayer at collar/openings. Keep it weathered — she lives outdoors; no clean ceremonial silk.
2. **Hakama/trousers:** keep Foreseen's baggy silhouette; recolor to dark charcoal-brown.
3. **Hair:** recolor the ponytail from grey to black (deep brown-black, not blue-black). The length is longer than hers; that liberty is accepted. Match any hair cards/fringe to the same black.
4. **Face (texture work):** remove beard/stubble entirely; soften toward Atsu — a Japanese woman, determined, weathered, no glamour makeup. Evoke her; do not chase a photoreal likeness. Her face must stay fully visible (no mask — see above).
5. **The sash:** use Yasuo's existing waist straps/belt geometry as the mount. Add the hanging cloth strip(s) with the six names (see THE LOOK #1) — off-white/weathered cloth, dark calligraphy. If the base geometry cannot hang a strip convincingly, say so in the report and do the strongest texture-only version on the existing straps rather than forcing broken geometry.
6. **Shamisen (mesh addition — attempt, gated):** build a simple shamisen prop — shallow box body, long thin neck, small headstock, wood-brown with the pale skin head — and rig it flat across her back (spine bone), the way she carries it. Textures can be simple; silhouette is what matters. **Gate:** if clean attachment/rigging is not achievable in reasonable effort, DEFER it, ship the rest, and flag it plainly in the report. Do not let the shamisen block the build.
7. **Spectral arm:** KEEP Foreseen's spectral arm — it maps onto Atsu's Onryō ghost aura. Recolor its glow from teal toward a pale spectral blue (texture/emissive only; do not rebuild particles in this pass).
8. **Katana:** keep Yasuo's blade; add the twin-wolf motif to the guard/handle wrap in texture (her katana carries a twin-wolf mark for her brother). Subtle; texture-level.
9. **Stretch (only if everything above lands clean):** the Lone Wolf's Straw Hat — a simple dark round straw kasa, worn so her face stays visible. Skip it silently if it fights the hair; do NOT substitute a mask.

## HARD LAWS
- **SKN FOOTER LAW:** Riot-exported .skn files end with a 12-byte zero footer after the vertex data. Any .skn your writer outputs MUST have those 12 zero bytes or the game silently dies on load. Check every written .skn before packaging.
- Keep stock backups; every edit must be reversible.
- Ship a standard .fantome package named: `Yasuo-Atsu-Ghost-of-Yotei-v1.0.0.fantome`

## OUT OF SCOPE (this pass)
Voice of any kind; ability icons; loading screen; profile/circle art; particle/VFX rebuilds; splash art; any mask.

## VERIFY — report all three states separately
1. **File state:** package builds; every .skn footer-checked; file list of what changed vs stock.
2. **Load state:** the package installs and the champion loads into a game without crashing (Practice Tool is fine).
3. **Visual state:** screenshots (front, back — the shamisen and sash live on the back/waist, profile) at game zoom. State plainly which of the three states you actually reached. "Built" is not "seen in game."

## REPORT FORMAT
Phase 0 inventory → what you changed per spec item (1–9, including deferred/failed items with the reason) → the three verification states → anything Andrew needs to decide.
