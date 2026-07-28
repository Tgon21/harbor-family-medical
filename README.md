# Harbor Family Medical — 5 homepage concepts

Five genuinely different homepage design directions for one fictional family medicine
practice. Same brand, services, providers, and trust signals across all five, so the design
is the only variable.

Full written design spec — visual strategy, UX strategy, section order, booking UX, trust
elements, accessibility decisions, and best-fit audience for each concept — is in
[CONCEPTS.md](CONCEPTS.md).

## Files

```
index.html              gallery: comparison table + links to all five
1-harbor-oak.html       calm & premium, editorial serif, warm neutrals
2-harbor-bright.html    bright & family-friendly, rounded, bottom tab bar
3-harbor-connect.html   modern tech-enabled, working slot picker
4-harbor-commons.html   community neighborhood, photo mosaic, phone-first
5-harbor-now.html       minimal same-day, live status board
CONCEPTS.md             full written design spec
.nojekyll               serve files as-is on GitHub Pages
```

Each concept is one self-contained file — CSS and JS inline, no build step. The only
external dependency is Google Fonts (Fraunces, Baloo 2 + Nunito, Inter + JetBrains Mono,
Bitter + Caveat, Oswald — one pairing per concept); every page keeps full system-font
fallbacks, so they still render fine offline.

## Preview locally

```bash
python3 -m http.server 8000
# open http://localhost:8000
```

## The five directions

| # | Concept | Direction | Signature move |
|---|---|---|---|
| 1 | **Harbor & Oak** | Calm, premium, editorial | No cards anywhere — hairline rules and a numbered editorial service list. Full-screen serif overlay menu |
| 2 | **Harbor Bright** | Bright, family-friendly | Bottom tab bar + horizontal snap carousels on mobile. Curved SVG dividers, age bands |
| 3 | **Harbor Connect** | Modern tech-enabled | The hero *is* a working scheduler. Tabbed services, searchable insurance |
| 4 | **Harbor Commons** | Community neighborhood | Photo mosaic hero, 2004 timeline, bulletin board. Call outranks Book |
| 5 | **Harbor Now** | Minimal same-day | Live status board hero, reordered above the headline on mobile. Permanent dual-action bar |

Mobile is a re-layout in every case, not a collapsed desktop grid — the differences are
listed per concept in CONCEPTS.md.

## What's interactive

- **Concept 3** — functional 14-day slot picker with per-day opening counts, segmented
  in-person/video toggle that changes availability, ARIA tabs with arrow-key navigation,
  live insurance search filter, open/closed status computed from posted hours.
- **Concept 5** — open/closed status derived from an hours table and repainted every 30s
  (header LED, hero panel, both location badges), same-day slot chips that expire against
  the real clock with the remaining count recomputed.
- **Concepts 1, 2, 4** — nav patterns only (scroll-triggered sticky bar, bottom tab bar,
  slide-in drawer with scrim and focus management).

All of it is demo logic. Nothing talks to a real scheduler.

## Deploy to GitHub Pages

```bash
gh repo create harbor-family-medical --public --source=. --push
gh api -X POST repos/{owner}/harbor-family-medical/pages \
  -f 'source[branch]=main' -f 'source[path]=/'
```

## Before using any of this for a real practice

- **All content is fictional placeholder text.** Providers, reviews, phone numbers,
  addresses, prices, hours, and availability figures must be replaced with verified
  information from the practice.
- **Insurance lists must come from the practice's actual contracts.** Advertising a plan
  you are not in-network with generates real billing complaints.
- **No concept collects clinical data on the page** — every one describes booking as a
  handoff to a HIPAA-compliant patient portal and carries a visible privacy notice. Keep
  that architecture. A plain web form that emails symptoms is not HIPAA-compliant.
- **Concept 3's picker and Concept 5's status board must be wired to the real
  scheduler/EHR** before launch, or they will confidently display fiction.
- **Concept 5's "go to the ER instead" triage list is clinical content** and needs review
  and sign-off by a licensed clinician at the practice.
- **Photography** is represented by duotone gradient placeholders with `aria-label`s
  describing the intended shot. Real patient or staff photos require signed releases.
