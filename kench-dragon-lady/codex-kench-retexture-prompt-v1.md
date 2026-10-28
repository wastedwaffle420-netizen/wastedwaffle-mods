# Prompt for Codex — Dragon Lady Kench: CHEAP RETEXTURE pass (paste-ready)

Task: retexture BASE Tahm Kench into the Shantytown Madam. Paint only — this
pass touches diffuse textures and nothing else. No mesh edits, no rig, no
animation, no BIN logic, no new files, no resolution changes, no renames:
every texture keeps its exact path, name, dimensions, and format.

DISCOVER, DON'T HAND-LIST: enumerate every texture variant of base Kench
(skin0) from the installed game data — the base diffuse set plus any chroma
variants that ship as separate textures for the base skin — and apply the
same retexture treatment to each variant (chromas keep their own base hue
shift; the madam paint layer — makeup, brocade, jewelry paint, claw lacquer —
goes on all of them identically). Report the discovered list before painting
so the count is on record.

TARGET LOOK: the concept sheet Andrew will attach (two model-viewer angles).
The concept is a COLOR AND PAINT target only. Anything the concept shows as
dimensional (coin chain, bangles, flower) must be translated into flat paint
in the diffuse, shaded to sit on the surface — never geometry.

THE PAINT SPEC (same as the concept brief):
- Skin green-to-cream stays; warmer/flushed. Rouge high on both cheeks, deep
  red lipstick along the mouth seam, dark eyeshadow around the eye, one small
  beauty mark beside the mouth.
- Vest: deepen the burgundy to brothel red, worn-shiny edges, faded dark
  peony brocade woven in; the two gold toggles stay, tarnished.
- Coat + tooled arm piece: darker and rattier, two mismatched patch repairs,
  gold trim dulled; the arm guard reads as stacked jade-and-dull-gold bangle
  bands painted up the forearm.
- Belly: flat-painted cheap gold coin chain draped across it; one faded
  blue-grey wave-and-cloud tattoo low on one side. NO fish motifs anywhere.
- Hat: black stays, red band richer, gold coin charm polished bright, one red
  flower painted at the band.
- Claws on hands and feet: lacquer red, a couple chipped.
- Barbels stay pale; tongue stays pink, deeper at the tip. Teeth and the
  glowing eye: untouched. Emissive and all non-diffuse maps: untouched unless
  a painted element must register in them (default: no).

EXPLICITLY OUT OF SCOPE for this pass (later pass, do not touch):
loading screen art, profile circle and square icons, ability icons.

VERIFY AND REPORT (three separate states, as always):
1. File checks: every discovered variant retextured, dimensions/format/path
   unchanged, package rebuilds clean.
2. Viewer check: Khada model-viewer renders, front and three-quarter,
   matching Andrew's reference angles, madam paint readable at model scale.
3. In-game: loads and reads as her in a live game — Andrew's verdict, not
   inferred from 1 or 2.
