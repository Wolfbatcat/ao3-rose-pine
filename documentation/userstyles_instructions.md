A userstyle add-on that brings custom fonts to [Archive of Our Own](https://archiveofourown.org), with mobile support. Designed to be used alongside the [Rose Pine Site Skin by BlackBatCat](https://archiveofourown.org/works/69993411).

> **Note:** The `--txt-size` variables require the Rose Pine site skin to function. The font variables will work with any skin.

---

## Customization

All user-editable settings are located at the top of the file in the `:root` block, under the `SETTINGS` section.

### Text Sizes

| Variable | Default | Description |
|---|---|---|
| `--txt-size-main` | `100%` | Size of main UI text. Values above 130% may cause minor layout issues. |
| `--txt-size-work` | `110%` | Size of text in work body. |
| `--txt-bold` | `700` | Font weight used for bold and heading text. |

> The `--text-size` variables only work when the Rose Pine site skin is active.

### Font Families

| Variable | Description |
|---|---|
| `--font-main` | Font used for general UI text, navigation, and metadata. |
| `--font-work` | Font used for work body text. |
| `--font-heading` | Font used for headings (`h1`–`h6`). |
| `--font-code` | Font used for code blocks and text areas. |

To swap a font, replace the first value in the font stack with the name of your preferred font. The remaining values act as fallbacks in case the primary font fails to load.

**Example** — changing the work font to Domine:
```css
--font-work: Domine, Merriweather, Apfel Grotezk, Bitter, Georgia, serif, "GNU Unifont";
```

---

## Credits

- **[ravenothere](https://github.com/ravenothere)** and [AO3 Tweaks](https://github.com/ravenothere/AO3-Tweaks?tab=readme-ov-file) — for figuring out how to load custom fonts on mobile browsers!
- **[Figtree](https://www.erikdkennedy.com/projects/figtree.html)** — Erik Kennedy
- **[Apfel Grotezk](https://www.collletttivo.it/typefaces/apfel-grotezk)** — Collletttivo
- **[Merriweather](https://fonts.google.com/specimen/Merriweather)** — Sorkin Type
- **[Victor Mono](https://rubjo.github.io/victor-mono/)** — Rune Bjørnerås
- **[Domine](https://fonts.google.com/specimen/Domine)** — Impallari Type
