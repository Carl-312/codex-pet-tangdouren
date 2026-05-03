# 唐豆人 / Tangdouren

A custom Codex App pet packaged for easy local installation.

![Tangdouren preview](preview/screenshot.png)

## What is included

This repository keeps only the files needed to install the pet:

```text
pets/
  bighead-girl/
    pet.json
    spritesheet.webp
```

Optional preview assets are stored in `preview/` for the GitHub page.

## Install on Windows

Run this from the repository root in PowerShell:

```powershell
.\install.ps1
```

The script copies the pet into:

```text
${CODEX_HOME:-$HOME/.codex}/pets/bighead-girl/
```

Then open Codex App settings and refresh custom pets from the local Codex home.

## Manual install

Copy this folder:

```text
pets/bighead-girl
```

to:

```text
$HOME/.codex/pets/bighead-girl
```

If you use a custom `CODEX_HOME`, copy it to:

```text
$CODEX_HOME/pets/bighead-girl
```

## Preview

![Contact sheet](preview/contact-sheet.png)

## License

Released under the MIT License. See [LICENSE](LICENSE).
