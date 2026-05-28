# Flatmac Discourse theme scaffold plan

## Reference / brief
- Source: direct user brief, no external reference site.
- Theme name: `flatmac` / display name `flatmac`.
- Goal: a minimal black-and-white Discourse theme with Uncut Sans, rounded buttons, and very little direct element styling.

## Visual extraction
- Primary colors: black text on white surfaces.
- Background/surface/text: `#ffffff` page/header/surfaces, `#000000` primary text, soft neutral grays for borders, selected states, and hover states.
- Font family: bundled Uncut Sans WOFF2 files; Regular for body (`400`), Bold for headings (`700`). Fallback: system UI sans stack.
- Radius scale: modest core radius (`8px`), rounded buttons/pills (`999px`), inputs (`10px`).
- Border/shadow style: mostly existing Discourse borders via color variables; no added card shadows.
- Spacing density: default Discourse density.
- Button/input/card style: rely on Discourse button/input variables; only broad button class radius fallback.

## Discourse mapping
- Color scheme in `about.json`: `primary: 000000`, `secondary/header_background: FFFFFF`, `tertiary/header_primary: 000000`, gray hover/selected/highlight/quaternary.
- CSS variables to override: font families/weights, radius tokens, button default/primary variables, input border/radius, hover/selected text variables, shadows kept flat.
- Target selectors/components: `:root` and broad button/input classes only where Discourse core variables need a fallback.
- Intentionally default: topic lists, sidebar layout, header positioning, composer layout, search internals, user cards, mobile layout.

## Theme scaffold
- Path: `/Users/pmusaraj/Projects/flatmac`.
- Files: `about.json`, `common/common.scss`, `assets/UncutSans-Regular.woff2`, `assets/UncutSans-Bold.woff2`.
- No JavaScript, connectors, desktop/mobile split, settings, or icon component.

## Testing plan
- Import/update local theme from a copy under `/var/discourse/tmp/flatmac` in the Docker-backed Discourse instance.
- Make it user-selectable and set as default for visual verification.
- Verify DB/theme state, generated CSS contains Flatmac tokens/font-face, rendered page includes the theme stylesheet, and computed styles show Uncut Sans + rounded buttons.
- Check `/latest`, a topic page if available, and categories/browser console for theme errors.
