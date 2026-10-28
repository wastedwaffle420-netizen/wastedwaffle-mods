# Prompt for Codex — Ash Lynx Locke, STEP 1: gun and knife (paste-ready)

Task: reskin BASE Locke as Ash Lynx (Banana Fish) in a High Noon American
gangster register. Built on base Locke — NOT on Riot's High Noon Locke skin;
theirs isn't Ash. This step is deliberately small. Read the out-of-scope list
before starting.

THE WHOLE MISSION:
1. ASH ON LOCKE'S MODEL. Blond spiky hair, jade-green eyes, pale skin, the
   beautiful young face — Ash's beauty is the design, not a detail. Outfit:
   loose white shirt, blue jeans, brown belt, red accent on the footwear
   (his red hi-tops translated to boots), and outerwear he actually has to
   wear: a faded jade-green plaid overshirt, worn open over the white shirt.
   Plain clothes, thrift-store register — no cowboy costume, no duster, no
   black leather. The corruption is NOT this step (see out of scope).
2. THE GUN — this is the prototype deliverable, gate everything on it.
   Locke's Ritual Nails become gunshots, so he needs a handgun (revolver,
   High Noon register) that sits correctly in his hand through his animation
   set: idle, run, the Q ready/throw motion (which must now read as firing),
   the E blink and dash-through attack, and the empowered two-handed stab.
   Report on the gun FIRST: in hand, aligned, no clipping through the palm,
   readable at game camera distance. If the gun can't be made to sit right,
   stop and report before painting anything else.
3. THE KNIFE. His second weapon: the consumed-marks stab (the two-handed
   stab animation when he cashes out three marks) reads as a knife strike.
   A plain fighting knife, worn at the belt when not in hand. Gun and knife
   are his whole kit read: shots at range, knife up close.

EXPLICITLY OUT OF SCOPE for this step:
- NO transformation layer. No black spiky flesh, no flames, no
  seal-progression visuals, no form change on seals or on W. That is a later
  step if it ever happens; do not build hooks for it now.
- No voice work. No icon/loading/profile work. No kit logic changes — Q
  stays Q mechanically; only its read (gunshots) changes.

HOUSE LAWS AND VERIFICATION:
- If any .skn is written, it carries the 12-byte zero footer after the vertex
  data — the loader dies silently without it.
- Report three separate states: (1) file checks — package builds clean, gun
  and knife assets listed; (2) loads — enters a game on base Locke with no
  crash; (3) SEEN IN GAME — the gun stays in his hand through Q, E, and the
  stab at real game camera, and the Q reads as shots being fired, not nails
  being thrown. State 3 is Andrew's verdict, not inferred from 1 or 2.
