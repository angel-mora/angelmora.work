# The White Cube & The Neon — Identity System v2.1

> A digital research hub disguised as a contemporary art gallery.
> Personality from typography, hard edges and editorial pacing — never from multiplying colors.

**Wordmark:** `[ST]` · **Stamp:** `SPECULATIVE TECHNOLOGIES — BRAND IDENTITY MANUAL` · **Version:** `v2.1 — 2026-04-22`

---

## 1. Philosophy

- **One cube, one neon.** A monochromatic white (or true black) gallery into which a single amber neon is inserted as decorator, CTA, or hovered underline.
- **The Friction of the Edge.** No rounded corners. Ever. Hard edges create a small cognitive bump that reminds the user they are using a *tool*, not consuming a feed.
- **Colors earn the right to appear.** If a color cannot name its purpose (success, warning, draft, deprecated, featured), it must not be on screen or page.
- **Two registers in productive tension:** the *technical grid* (Linear/Notion density, monospace metadata, tables) and the *gallery space* (Balenciaga whitespace, Are.na breath, generous margins). Use both. Never average them.
- **Voice:** curatorial, technical, restrained. The serif only appears when the reader is asked to slow down.

A red border is never "a red border" — it is a *deprecation notice*.

---

## 2. Color tokens

### The Neon (brand, single accent)
| Token | Hex | Role |
|---|---|---|
| `--brand` | `#FBBF24` | amber-400 · idle |
| `--brand-hover` | `#F59E0B` | amber-500 |
| `--brand-active` | `#D97706` | amber-600 |

### The Canvas (zinc neutrals, light mode)
`50 #FAFAFA · 100 #F5F5F5 · 200 #E5E5E5 · 300 #D4D4D4 · 400 #A3A3A3 · 500 #737373 · 700 #404040 · 800 #262626 · 900 #171717 · 950 #0A0A0A`

Dark mode inverts the scale (`50 ↔ 950`, etc.). Pure `#FFFFFF` / `#000000` for ground and ink.

### Semantic voices (each color = one meaning)
| Token | Hex | Deep | Tint (light) | Meaning |
|---|---|---|---|---|
| success | `#34D399` | `#065F46` | `#D1FAE5` | active, published, confirmed |
| error | `#F87171` | `#991B1B` | `#FEE2E2` | deprecated, destructive, failed |
| warning | `#FBBF24` | `#92400E` | `#FEF3C7` | draft, caution |
| info | `#38BDF8` | `#075985` | `#E0F2FE` | research, in-progress |
| featured | `#A78BFA` | `#5B21B6` | `#EDE9FE` | spotlighted |

---

## 3. Typography — four voices

| Tier | Family | Role | When | Why |
|---|---|---|---|---|
| 01 · DISPLAY | **Space Grotesk** 600–700, tracking `-0.02em` to `-0.045em` | Titles, hero, section markers, large numerals | Geometric personality; holds up at 8rem |
| 02 · UI / COPY | **Inter** 400–600 | Body copy, labels, navigation, UI chrome | Battle-tested product workhorse |
| 03 · READING | **Lora** 400 (italic for emphasis) | Long-form essays, article body **only** | Serif contrast signals "slow down" |
| 04 · METADATA | **JetBrains Mono** 400–600, tracking `0.08em–0.15em`, UPPERCASE | Code, timestamps, status labels, captions | The voice of the machine |

**Rules.** Display gets negative tracking; mono gets wide tracking; body stays neutral. Lora never appears in UI chrome or dashboards. Mono is the only uppercase voice. Hierarchy is built by scale and weight contrast, *not* color.

---

## 4. Layout & space

- 12-column grid, max width 1280–1400 px web; A-series or 6×9 in print.
- Minimum **64 px** (web) / 24 mm (print) between major sections. The cube must breathe.
- Rules in pure black (`#000`) or pure white in dark mode. Neutral-300 only for inner table dividers.
- **No shadows by default.** The only sanctioned shadow is the **brutalist offset** `3px 3px 0 0 #000` on hover-elevated buttons; on press it collapses to `0 0` while the element shifts `translate(2px, 2px)`. No blur, no tinted shadows.
- **No `border-radius`. Anywhere. Including images.**
- Asymmetric: section markers (`§01 PHILOSOPHY`) in a left 3/12 column; content in 8/12 starting at column 5.
- A single 2-px amber vertical rule (24–96 px tall) is the recurring "neon trace" decorator — used sparingly: hero, gallery panel, pull quotes.

---

## 5. Components

- **Status tag.** 1 px black border, semantic background, **black text**, mono 10–11 px, weight 600, padding `4px 8px`. No radius, no shadow. Hover: `translate(0,-2px)`.
- **Button.** Mono uppercase label, tracking `0.05em`, 2 px black border, brutalist offset `3px 3px 0 0 currentBorderColor`. Hover lifts to `5px 5px`, press collapses. Variants: `brand`, `success`, `elevated`, `outline`.
- **Table.** Mono headers in `neutral-500` 11 px, left-aligned. Cells 11–13 px Inter. 1 px row dividers in `neutral-200`. No zebra, no outer shadow.
- **Pull quote / callout.** Left border 4 px amber, background `neutral-100`, padding 24 px. Title Inter 600 / 16 px; body Inter 400 / 15 px `neutral-700`.
- **Section marker.** 32×32 px black-bordered square with the number in mono 12 px, then uppercase mono 11 px label tracked `0.1em`.

---

## 6. Voice & don'ts

- ✓ Use amber **only** for brand gestures: primary CTA, hovered link underline, the single decorator rule.
- ✗ Never use amber as a "warning" fill — warning is `#FBBF24` *semantically* deployed (tint + deep + label), not raw color.
- ✓ Use emerald / red / sky / violet only when communicating a status.
- ✗ Never decorate a section header with green.
- ✓ Let the white cube breathe — minimum 64 px whitespace between sections.
- ✗ Never apply the gallery register to dashboards, or the technical grid to long-form essays.
- ✗ No gradients. No glassmorphism. No drop shadows beyond the brutalist offset. No emojis in chrome.

---

## 7. Output checklist

Every artifact (page, spread, chapter, slide) must declare:

1. The active **register** — Technical Grid or Gallery Space.
2. The **typographic tier** doing the heavy lifting.
3. Whether amber appears, and what it is *naming* (brand gesture vs. semantic warning).
4. The exact neutrals and rules used.

If any of these cannot be named, the artifact violates the system and must be revised.
