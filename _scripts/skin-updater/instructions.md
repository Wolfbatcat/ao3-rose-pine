# AO3: Skin Updater

Automatically update AO3 skin timestamps on git commit.

## Setup

### Windows
1. Drag `_scripts` folder into your project root
2. Run `setup-windows.bat` from inside `_scripts/skin-updater/`
3. Add this to your CSS: `- Updated:      0000-00-00 00:00 UTC` (any placeholder value works)

### Mac/Linux
1. Drag `_scripts` folder into your project root
2. Run `bash setup-mac-linux.sh` from inside `_scripts/skin-updater/`
3. Add this to your CSS: `- Updated:      0000-00-00 00:00 UTC` (any placeholder value works)

## Usage

Stage commits through the UI or:

```bash
git add your-skin.css
git commit -m "Your message"
```

Timestamp updates automatically. ✓

## Example

Before: `- Updated:      0000-00-00 00:00 UTC`
After:  `- Updated:      2026-04-18 15:45 UTC`

Templates for desktop, tablet, mobile, theme, and add-on metadata blocks are provided in the `examples` folder.

## Uninstall

Delete `.git/hooks/pre-commit` and the `_scripts` folder.