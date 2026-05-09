# Tangdouren Pet Status

Last verified: 2026-05-09

## Current Package

- Pet id: `tangdouren`
- Display name: `Tangdouren`
- Install folder: `${CODEX_HOME:-$HOME/.codex}/pets/tangdouren/`
- Required install files:
  - `pet.json`
  - `spritesheet.webp`

## Sprite Contract

- Atlas: `1536x1872`
- Grid: 8 columns x 9 rows
- Cell: `192x208`
- Format: transparent WebP (`RGBA`)
- Row order:
  - row 0: `idle`, 6 frames
  - row 1: `running-right`, 8 frames
  - row 2: `running-left`, 8 frames
  - row 3: `waving`, 4 frames
  - row 4: `jumping`, 5 frames
  - row 5: `failed`, 8 frames
  - row 6: `waiting`, 6 frames
  - row 7: `running`, 6 frames
  - row 8: `review`, 6 frames

## Current Animation QA

All 9 states load and play from the current atlas. The current package keeps `jumping`, `running-right`, and `running-left` visually unchanged from the known-good package, and strengthens `waving`, `running`, and `review` so they are less likely to be mistaken for static frames.

Motion distinction scores from the latest frame-difference pass:

```text
idle           12  low, intentionally subtle
running-right  22  moderate
running-left   22  moderate
waving         29  clear
jumping        26  moderate
failed         34  clear
waiting        19  moderate
running        36  clear
review         19  moderate
```

## Verification

Latest local checks passed:

- `validate_atlas.py`: ok, no warnings.
- Used cells: 57/57 non-empty.
- Unused cells: 15/15 fully transparent.
- Browser/WebP decode: `1536x1872`, RGBA-capable; unused cell alpha sampled as `0`.
- Browser preview: all 9 states load from `spritesheet.webp` using `192x208` background-position cropping.
- Local install verified at `C:\Users\Carl\.codex\pets\tangdouren\`.

Preview files:

- `preview/contact-sheet.png`
- `preview/screenshot.png`
- `preview/animation-preview.html`

## Maintenance Notes

- Do not accept a spritesheet based only on dimensions; always crop and preview all 9 states.
- Before replacing a row, clear the entire row to transparent first. Masked paste over old pixels can recreate the stacked-layer bug.
- Keep `pet.json.id`, the folder name, and `spritesheetPath` aligned.
- After changes, install locally and verify the install folder contains only `pet.json` and `spritesheet.webp`.
