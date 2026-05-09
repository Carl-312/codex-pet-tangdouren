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

## Latest Fix

The previous `running-right` row had a too-wide crop envelope and could appear as stacked layers during app playback. The current `running-right` row was rebuilt by clearing row 1 and then writing clean, exact horizontal mirrors of the known-good `running-left` frames.

## Verification

Latest local checks passed:

- `validate_atlas.py`: ok, no warnings.
- Used cells: 57/57 non-empty.
- Unused cells: 15/15 fully transparent.
- `running-right`: exact frame-by-frame mirror of `running-left`.
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
