# Harbor Family Medical — five homepage concepts

One fictional family medicine practice, five distinct design directions. Shared content
foundation so the design is the only variable.

**Brand:** Harbor Family Medical · family medicine / primary care
**Locations:** Bayview (main, 240 Harbor Street Suite 300) + Northgate (satellite, 1170 Northgate Plaza Unit B)
**Services:** annual physicals · same-day sick visits · chronic care management · vaccines · telehealth · lab follow-up
**Trust baseline:** 4 board-certified providers · same-week availability · online booking · most insurance accepted · bilingual staff · 4.9 / 812 reviews
**Required CTAs:** Book Appointment · Call Now · Meet Our Doctors

---

## Summary comparison

| Concept | Tone | Color direction | Ideal audience | Strongest conversion angle |
|---|---|---|---|---|
| **1. Harbor & Oak** | Calm, premium, editorial | Warm neutrals — bone `#fbf8f3`, ink `#23201c`, brass `#6e5a3c` | Established adults, seniors, concierge-leaning private practice | Perceived quality. Converts on trust and restraint, never urgency |
| **2. Harbor Bright** | Warm, welcoming, playful | Sky `#eaf6f8`, teal `#0a7d8c`, sun `#ffd166`, coral `#f2724f`, mint `#8fd8b8` | Parents of young children, growing families | Anxiety reduction + an app-like bottom tab bar with Book always on screen |
| **3. Harbor Connect** | Crisp, competent, product-like | Near-white `#fcfcfd`, slate `#0f172a`, one signal green `#0e9f7a` | Busy professionals, telehealth users | The hero *is* the scheduler — booking begins in the first viewport |
| **4. Harbor Commons** | Human, local, reassuring | Cream `#f6f1e7`, pine `#1f4436`, brick `#a8452c`, wheat `#d99a2b` | Multi-generational neighborhood families | Relationship + phone-first. "Call and a person answers" |
| **5. Harbor Now** | Fast, direct, high-contrast | Near-black `#111114`, white, signal orange `#e14b06` | Same-day seekers searching on a phone mid-need | Live status board + permanent dual-action bar. Highest mobile conversion |

---

## 1 · Harbor & Oak

**File:** `1-harbor-oak.html`

### Brand personality
The quiet, expensive-feeling private practice. Unhurried, literate, confident enough not
to advertise. The design equivalent of a physician who sits down before speaking. It sells
continuity of care ("continuity is the treatment") rather than convenience.

### Desktop layout
Centered wordmark masthead over a hairline-ruled horizontal nav — an editorial masthead,
not a SaaS app bar. A full-bleed duotone photographic plate runs at ~66vh, and a bone
content card rises 118px over its bottom edge, breaking the grid deliberately. Body
sections use a two-column editorial grid: a sticky numbered label in a 200px left rail
("01 — The Practice") against a wide right column. The practice intro sets a 1.42rem lead
paragraph above two-column flowing body text. Services are a **numbered list with hairline
dividers and a four-column baseline-aligned row** — no cards. Providers alternate
portrait/text in a 50/50 split with a metadata definition list. Reviews are one oversized
centered serif italic pull quote, then three smaller quotes divided by vertical hairlines.

### Mobile layout
Not a collapse — a re-layout. The photographic plate shortens to a 230px band and the hero
card stops overlapping it entirely, sitting flush below at full width. The four-column
service rows become stacked blocks where the roman numeral turns into a small letterspaced
prefix above the title. The provider portrait switches from 4:5 to 3:2 and the alternating
order is neutralized so the reading order never inverts. Nav is a **full-screen bone
overlay with 34px serif links** — no hamburger icon, just the word "Menu" on a hairline,
consistent with the editorial voice. The three-column mini-quotes stack with hairline
separators.

### Visual design system
- **Palette:** bone `#fbf8f3`, warm second surface `#efe7d8`, ink `#23201c`, soft ink `#5f584e`, rule `#ded5c7`, brass `#6e5a3c` (text-safe), oak `#8a7355` (decor only)
- **Typography:** Iowan Old Style / Palatino / Georgia serif for everything editorial — display *and* body; system sans reserved for UI chrome (nav, buttons, metadata, tags). Display down to −1.2% tracking, body at 18px/1.7
- **Card style:** none. Hairline rules (`1px solid var(--rule)`) do all the dividing work. The single exception is the hero card, which is a plane, not a card
- **Border radius:** 1–3px. Effectively square
- **Spacing density:** lowest of the five. 96px section padding, 64px column gaps, 46ch max line length
- **Icon style:** no icons. Roman numerals and letterspaced uppercase text tags instead
- **Button style:** square-ish (1px radius), solid ink fill with bone text, 13.5px uppercase letterspaced sans label, 48px min height. Outline variant inverts on hover
- **Imagery:** editorial documentary photography, natural light, warm duotone grade. Wide plates and 4:5 portraits. Represented in the demo by warm gradient placeholders with an SVG grain overlay and `aria-label` describing the intended shot

### Homepage section order
Topline (credentials + phone) → masthead + nav → hero plate + offset card → 01 The Practice
→ 02 Services (numbered list) → 03 Meet Our Doctors → Patient voices (pull quote + trio)
→ 04 Insurance → 05 Visit Us (two locations) → Book + privacy notice → footer

### What makes it different
It is the only concept with **no card grid, no icons, and no shadows**. Section rhythm is
driven by a sticky numbered rail rather than centered headings. Services are prose, not
tiles.

### Hero content & CTA treatment
Eyebrow "Accepting new patients" → H1 *"A family doctor who has time for the whole
conversation."* → 46ch lede naming the four physicians, same-week appointments, and the
front desk → two buttons (solid **Book Appointment**, outline **Call (555) 214-0880**) →
a hairline-topped trust line with a green dot: same-week availability · most insurance ·
bilingual staff. Deliberately restrained — no countdown, no urgency.

### Trust-building
Long-form provider bios (3–4 sentences each) with credentials, years, languages, and
location in a metadata list; "Board Certified" and "Founding Physician" in the credential
line; 4.9 average with 812-review count set in display serif; one long testimonial plus
three attributed short ones with tenure ("Patient since 2016"); insurance as a plain
middot-separated text row with an explicit "call and we'll verify while you're on the
phone" and published self-pay pricing; both addresses with full hours tables, phone, fax,
parking and accessibility notes; a brass-ruled privacy panel covering portal-only booking,
no-PHI-by-web-form, and the 911 instruction.

### Booking UX
**Desktop:** persistent solid Book button in the masthead, plus hero CTA, plus a per-provider
"Book with Dr. —" text link, plus the closing Book section. **Mobile:** the masthead button
is hidden to keep the editorial header clean; instead a sticky bottom bar slides up after
520px of scroll carrying outline **Call** + solid **Book Appointment**. It is absent at the
top of the page on purpose — the hero CTA is already in view, so the bar would be redundant
chrome over an editorial first impression.

### Accessibility decisions
Ink on bone is ~13:1. Brass `#6e5a3c` on bone clears 5:1 for the small uppercase labels;
lighter oak is confined to decoration. 18px body at 1.7 line height, 46ch measure. Skip
link, `<header>`/`<nav aria-label>`/`<main>`/`<footer>` landmarks, one `<h1>`. The overlay
menu manages `aria-expanded`, locks body scroll, moves focus to the first link, closes on
Escape, and returns focus to the trigger. 48px minimum button height. Photographic
placeholders carry `role="img"` + descriptive labels. `prefers-reduced-motion` disables
smooth scroll, all transitions, and the sticky-bar slide.

### Best fit for
An established practice with a mature panel that competes on quality of attention — longer
visits, physician continuity, concierge or direct-primary-care leanings. Also the strongest
choice where the patient population skews older and reading comfort matters more than
interaction density.

---

## 2 · Harbor Bright

**File:** `2-harbor-bright.html`

### Brand personality
The practice that makes a four-year-old stop crying in the parking lot. Optimistic, warm,
plain-spoken, competent without being clinical. Speaks to the parent doing the scheduling
and the child being scheduled.

### Desktop layout
Sticky white app bar with a rounded-square teal mark, pill-shaped nav links, and a coral
Book button. Hero is a 1.06/0.94 split: copy left with a marker-highlighted phrase, a
photographic card right with a 5px white frame, plus two floating white badge cards
(rating 4.9; next opening Thursday 9:40) breaking its corners. Three soft blurred blobs
sit behind everything. An **SVG curve** cuts the hero into the next section. Below that a
five-across age-band strip (Babies → Seniors) in five pastel tints. Services are 3-across
pillowy cards with 58px rounded icon tiles. Providers are 4-across with 104px circular
gradient portraits and a "fun fact" tinted box. Reviews are 3-across **speech bubbles**
with CSS tails, above a sun-yellow score block. Insurance is a wrap of pill tags. Locations
are cards topped with a grid-pattern map plate.

### Mobile layout
The distinct pattern here is **horizontal snap carousels**. Services and providers switch
from `grid` to `display:flex` with `scroll-snap-type: x mandatory`, negative side margins
so cards bleed to the viewport edge, hidden scrollbars, and an explicit "Swipe to see all →"
hint that only appears at this breakpoint. Service cards take 82% width (88% under 420px)
and provider cards 68% (78%), so the next card always peeks — the affordance is visual, not
instructional. The age bands reflow 5→3 columns and drop their subtitles. Hero buttons go
full-width stacked; two of three blobs and one floating badge are removed to cut noise.
Navigation becomes a **fixed bottom tab bar** with five icon+label targets — Services,
Doctors, **Book** (coral, raised), Call, Visit — deliberately app-like, and thumb-reachable
one-handed while holding a child. The footer gains 104px of bottom padding so nothing hides
behind it.

### Visual design system
- **Palette:** sky `#eaf6f8` / `#d3ecf1`, teal `#0a7d8c` + dark `#06626f`, sun `#ffd166`, coral `#f2724f` + dark `#c14324`, mint `#8fd8b8`, grape `#6b5ca5`, ink `#16303a`
- **Typography:** Nunito → Avenir Next → `ui-rounded` rounded sans throughout. Headings at 800 weight, −2% tracking; body 500 weight for a softer stroke
- **Card style:** pillowy — 32px radius, 2px solid tinted borders, `0 10px 28px -14px` soft shadow. Icon tiles at 19px radius in six pastel fills
- **Border radius:** 22px base / 32px large / 999px pills. Highest radius of the five
- **Spacing density:** medium-high. 74px sections, 20px gaps — friendly and full, not airy
- **Icon style:** emoji at 27px in tinted rounded tiles, `aria-hidden`. Chosen for warmth and zero asset weight; swap for a rounded line-icon set in production
- **Button style:** fully rounded pills with a **6px hard bottom shadow** that compresses on hover and collapses on `:active` — a tactile, toy-like press. 52px min height
- **Imagery:** candid family + physician photography, high-key, warm. Circular provider crops. Represented by multi-stop gradients with a radial highlight
- **Motion:** curved SVG dividers and blob shapes carry the softness so no animation is required

### Homepage section order
Header → hero (copy + photo card + floating badges) → SVG curve → age bands → services
(carousel on mobile) → doctors on sky background (carousel on mobile) → reviews (score +
speech bubbles) → insurance pills → locations → sun-yellow booking block + privacy →
rounded teal footer → bottom tab bar

### What makes it different
Only concept with a **bottom tab bar**, **horizontal carousels**, **curved section
dividers**, and an **age-band strip**. Section rhythm alternates white / sky-tinted with
rounded top corners rather than flat full-bleed bands.

### Hero content & CTA treatment
Yellow pill eyebrow "Now accepting new families" → H1 *"The doctor's office your kids
don't mind going to."* with "don't mind" marker-highlighted in sun yellow → lede naming
newborns through grandparents and same-week appointments → coral **Book Appointment** +
outline **Call** → three mint-ticked trust items. The floating badges do quiet conversion
work: a 4.9 rating and a concrete next opening.

### Trust-building
4.9 in a floating hero badge and again in a yellow score block with the 812 count and the
source platforms named (Google, Healthgrades, Vitals); three speech-bubble reviews with
5-star rows, avatars, names, and tenure; providers with credentials, languages, and a
humanizing fun fact that makes them feel like people a child will meet; eight insurance
pills plus a dashed "call and we'll check while you're on the phone" note and posted
self-pay pricing; both locations with map plates, hours, and direct phone buttons; a
mint-bordered privacy panel on portal-only booking, no PHI by form, and 911.

### Booking UX
**Desktop:** coral Book in the sticky header, hero primary CTA, a small Book button on each
provider card, and the yellow closing block. **Mobile:** the header button is removed and
the **bottom tab bar carries Book as a raised coral tab, on screen at every scroll
position**, with Call one tab away. This is the most persistently available booking CTA of
the five and is the reason this concept converts well for distracted parents.

### Accessibility decisions
Teal `#06626f` on white ~7:1; ink on sky ~11:1. Sun yellow is never used behind small
white text — it takes dark brown `#4a3200` text. Coral is used at its dark variant for
text. 16.5px minimum body, 500 weight for legibility at that size. All tab-bar and card
targets ≥52px. Emoji are `aria-hidden` with text labels adjacent; star rows carry
`aria-label="5 out of 5 stars"`. The visually hidden `<h2>` labels the age-band region.
Carousels remain keyboard-scrollable and are ordinary DOM order, so tab sequence is
unaffected. Focus ring is dark coral for contrast against both white and sky surfaces.

### Best fit for
Pediatric-leaning family practices, practices in family-heavy suburbs, and any clinic whose
main obstacle is patient apprehension rather than availability. Strong when a large share
of traffic is a parent on a phone with a sick child nearby.

---

## 3 · Harbor Connect

**File:** `3-harbor-connect.html`

### Brand personality
The practice that runs on time. Precise, current, quietly technical — the tone of a
well-built product rather than a marketing site. It promises operational competence:
scheduling that works, results explained, telehealth as a real channel.

### Desktop layout
A thin 64px app bar with a "Booking open" LED status pill. The hero is a 1fr / 468px split
where the right column is a **functioning booking widget** rather than an image: bordered
panel, header strip with a live-availability LED, segmented In-person/Video control, three
selects, a horizontally scrolling day strip showing per-day opening counts, a 3-across slot
grid, and a footer with a live summary line and a disabled-until-valid continue button.
Left column carries the headline plus three monospace-labeled KPIs (median wait 2.4 days,
4.9/5, 41% of visits by video). Below: a four-cell bordered trust strip, then **tabbed
services** (In-person / Telehealth / Labs) with a full ARIA tab implementation, then a
provider **roster laid out like a table** with a monospace header row and next-available
chips, then a review block with a 5-bar rating distribution, then a **searchable insurance
list**, then location cards with computed open/closed chips.

### Mobile layout
The widget goes edge-to-edge with negative margins and squared side borders so it reads as
a native sheet rather than a floating card, and its slot grid drops 3→2 columns. The
segmented control and day strip already work as touch patterns and are unchanged — they
were designed mobile-first and scaled up. The hero's secondary link row is **removed
entirely** because a fixed bottom action bar (Call + Book Appointment) takes over. The
provider roster stops being a table: `grid-template-areas` restructures each row into a
stacked card with the avatar beside the name, focus below, and the availability chip and
Book button sharing a final row. The review header switches from a bordered-right score
column to a horizontal row above the distribution bars. Tabs stay a horizontally scrollable
strip rather than becoming a select or accordion — three short labels fit, and scroll is
cheaper than a mode change.

### Visual design system
- **Palette:** background `#fcfcfd`, panel white, ink `#0f172a`, secondary `#334155`, tertiary `#64748b`, borders `#e4e8ee` / `#cfd6e0`, one accent green `#0e9f7a` + dark `#0a7d60`, amber `#b45309` for waits. Deliberately **not** a purple/blue startup gradient — a single green signal on near-neutral
- **Typography:** Inter / system grotesque at 650 weight for headings with −2.2% tracking; `ui-monospace` at 11px/0.09em uppercase for every metadata label, duration, and count. The mono/grotesque pairing is what makes it read as product UI
- **Card style:** crisp — 12px radius, 1px `#e4e8ee` borders, `0 1px 2px` hairline shadow. Elevation only on the hero widget (`0 8px 24px -12px`)
- **Border radius:** 8px controls / 12px panels. Tight and consistent
- **Spacing density:** highest of the five. 76px sections, 14px grid gaps, 20px panel padding — information-dense but never cramped
- **Icon style:** almost none. LED dots, a checkmark, and an arrow. Meaning is carried by monospace labels and data
- **Button style:** 8px radius, 44px min height, solid green primary with a hairline shadow; secondary is white with a grey border darkening to slate on hover. Disabled state at 45% opacity
- **Imagery:** minimal by design — no photography in the hero at all. Locations use CSS grid-line map plates with a glowing pin. In production, add small square provider headshots to the roster only

### Homepage section order
Header (with status) → hero: copy + KPIs + live booking widget → four-cell trust strip →
tabbed services → provider roster → reviews (score + distribution + cards) → insurance
search + privacy panel → locations with computed status → footer → fixed mobile action bar

### What makes it different
The only concept where **the primary CTA is a working interface instead of a button**.
Booking starts in the first viewport with no navigation. It is also the only one with tabs,
a filter, a rating distribution, and a data-table-derived provider layout.

### Hero content & CTA treatment
Monospace eyebrow "Bayview & Northgate · Primary care" → H1 *"Book a real appointment in
about sixty seconds."* → lede on pairing board-certified physicians with scheduling that
works → three KPIs → secondary buttons **Meet Our Doctors** and **Call Now**. The primary
CTA is the widget itself: the continue button stays disabled with the message "Select a day
and time to continue" until a valid day+time exists, then the summary line resolves to
"Thu, Aug 6 at 9:40 am · Bayview · Annual physical" and the button enables. Changing visit
type, location, reason, or provider re-derives availability and clears the selection —
including auto-advancing to the next open day if the current one empties.

### Trust-building
KPIs quantify the promise (median wait, rating, telehealth share). The four-cell strip
states board certification with the certifying bodies (ABFM, NCCPA), same-week availability,
four languages, and plan count. The roster shows every provider's certification, years,
languages, clinical focus, and a real next-available chip — amber when it slips to next week,
which reads as honest rather than salesy. Reviews carry a 4.9, an 812 count, a full 5-star
distribution, and "Verified" on each. Insurance is searchable with a no-match fallback that
routes to a phone call. A green-ruled privacy panel leads with "We do not collect clinical
information on this website" and names encryption in transit and at rest. Location cards
compute open/closed live from posted hours, which is itself a trust signal — the site is not
stale.

### Booking UX
**Desktop:** the widget occupies 40% of the first viewport; a header Book button and
per-provider Book buttons scroll to it. **Mobile:** a fixed bottom bar (Call, Book
Appointment) appears at all scroll positions, and the widget itself becomes a full-width
stepper. Distinctively, the widget is not a form that emails anyone — it collects only
scheduling preferences and hands off to the portal to confirm, which is what keeps the
architecture HIPAA-appropriate.

### Accessibility decisions
Slate on near-white ~15:1; green `#0a7d60` on white ~4.6:1 and used only at 600 weight or
larger; amber `#b45309` ~5.1:1. Full ARIA on the interactive parts: `role="tablist"` with
arrow-key navigation, `aria-selected`, `aria-controls`, `hidden` panels; `aria-pressed` on
segmented, day, and slot buttons; `role="group"` + `aria-labelledby` on each button cluster;
`aria-live="polite"` on the summary so screen readers hear the selection resolve; day
buttons carry full `aria-label`s ("Thu Aug 6, 4 openings") because the visual label is
abbreviated; unavailable days are genuinely `disabled`. All controls ≥44px. Sub-labels are
never the only signal — every chip has text, not just color.

### Best fit for
Practices whose differentiator is access and operations: short waits, real telehealth,
online scheduling that isn't a phone-call request form. Best for working-adult panels and
any practice already running a modern patient portal it can hand off to.

---

## 4 · Harbor Commons

**File:** `4-harbor-commons.html`

### Brand personality
The practice that has been on the same street for twenty-one years and intends to stay.
Rooted, plainly warm, a little proud of its longevity. Sells *relationship* — the doctor
who knows your history because they were there for it.

### Desktop layout
An 80px cream header with a circular pine monogram and — instead of a Book button — a
**bordered phone card** reading "(555) 214-0880 / Front desk, no phone tree". The hero is an
**asymmetric photo mosaic**: a tall 1.35fr tile spanning two 196px rows beside three smaller
tiles, with a paper content card pulled 84px up over it. Then a full-width **pine timeline
band** with five milestones (2004 → today) connected by a hairline and marked with wheat
pips. Services are deliberately *not* cards — a two-column checkmarked list against a single
tall 3:4 photograph with a pull-quote caption. Providers are **neighbor rows**: square photo,
bio, a personal italic quote, and a bordered side rail with "In the neighborhood: 21 years."
Reviews are cards tagged by neighborhood and tenure. Then a **community bulletin board** —
a tinted panel of three slightly rotated paper notes with brick pushpins. Locations are cards
with photo plates and neighborhood-flavored parking/transit notes.

### Mobile layout
The mosaic **collapses to a single full-bleed 250px lead photo** — the other three tiles are
hidden rather than stacked, because four stacked gradient blocks would be noise; one strong
image plus the card is the mobile hero. The card loses its overlap and shadow and sits flush
below. The timeline flips from a horizontal 5-across rail to a **vertical list** with the
connecting line removed and each pip beside its milestone in a 26px/1fr grid. Provider rows
go single-column with a 3:2 photo, and the side rail becomes a full-width bordered block with
its definition list stacked. The bulletin board becomes a **horizontal snap rail** with the
rotation removed (`transform:none!important`) — tilted cards read as charming in a grid and
as broken in a scroller. Nav is a **right-hand slide-in drawer** with a scrim, serif links,
two tappable phone cards, and a Book button. The sticky bar puts **Call the office** first
at 58% width with Book secondary — inverted from every other concept, on purpose.

### Visual design system
- **Palette:** cream `#f6f1e7`, second cream `#efe7d8`, paper `#fffdf8`, pine `#1f4436` + `#2c5c49`, brick `#a8452c` + `#8a3722`, wheat `#d99a2b`, ink `#231f1a`, line `#ded2bd`
- **Typography:** Charter / Georgia transitional serif at 700 for headings — warmer and sturdier than Concept 1's Palatino, less formal; system sans for body at 17.5px/1.7. Serif is also used for the personal provider quotes and the review bodies, which is what gives it a hand-written warmth
- **Card style:** photo-first. 14px radius, 1px `#ded2bd` borders, photo plate on top and content below. Bulletin notes are a separate treatment: 6px radius, tiny shadow, ±0.6° rotation, brick pushpin via `::before`
- **Border radius:** 14px panels / 10px photos / 999px buttons / 50% monogram + review avatars
- **Spacing density:** medium. 76px sections, 52px column gaps
- **Icon style:** almost none — a `✓` before each service, a `☎` glyph in the phone card, `📍`-free maps. Warmth comes from photography and serif, not icons
- **Button style:** fully rounded pills, 2px borders, 52px min height. **Brick is the primary fill and pine the secondary**, so the loudest button on the page is a phone number
- **Imagery:** the most photo-dependent of the five. Documentary neighborhood photography — storefront, front desk, three generations in an exam room, the walk group. Five duotone gradient variants stand in, each with a grain overlay and a caption bar naming the intended shot

### Homepage section order
Header (with phone card) → hero mosaic + overlapping card → "since 2004" timeline (pine
band) → services checklist + tall photo → doctors as neighbor rows → neighborhood reviews →
community bulletin board → insurance + self-pay note → two locations with transit/parking →
becoming-a-patient + privacy → pine footer → mobile Call-first bar

### What makes it different
Only concept with a **photo mosaic hero**, a **timeline**, and a **community bulletin board**.
Only one where **Call outranks Book** in the CTA hierarchy. Services are a checklist rather
than tiles, and providers get a personal quote in their own voice.

### Hero content & CTA treatment
Brick kicker "Your neighbors' family doctor since 2004" → H1 *"We have been on Harbor Street
for twenty-one years."* → lede on four physicians who live in the neighborhood they practice
in, caring for the same families through braces and retirement → brick **Call (555) 214-0880**,
the literal word "or", then outline **Book Appointment** → a pine-dotted line with same-week /
insurance / se habla español. Naming the street and the tenure in the H1 is the whole
strategy: specificity is the trust signal.

### Trust-building
Tenure everywhere — "since 2004" in the header, a five-milestone timeline, "In the
neighborhood: 21 / 14 / 9 / 7 years" per provider, "6,400 neighbors on our panel — and still
capped." Board certification in each credential line. Personal italic quotes make providers
into people. Reviews are tagged by neighborhood *and* year joined. The bulletin board proves
community involvement with specifics (October walk-in flu clinic, August physicals, Dr.
Adeyemi's monthly harbor-loop walking group). Insurance is stated with an unusual honesty
note — "plan directories are often wrong, call and we'll verify" — plus a published $135
office visit. Locations name the bus route, the free lot behind the building, the accessible
entrance, and which doctor is usually there. A pine-ruled privacy panel covers portal-only
booking, no PHI by form, and 911.

### Booking UX
**Desktop:** the header's most prominent element is a phone card, not a button; the hero
leads with Call; each provider row has an outline "Book with Dr. —"; the closing block pairs
Call Now with the portal. **Mobile:** the drawer contains two tappable phone cards (one per
office) above the Book button, and the fixed bar is **brick Call the office / outline Book**.
This inversion is a deliberate audience call — an older, relationship-driven panel converts
better by phone, and promising "someone will pick up, we do not use a phone tree" is a
stronger differentiator than an online form.

### Accessibility decisions
Ink on cream ~12.5:1; pine on cream ~8:1; brick `#a8452c` on cream ~5.2:1 and used at 700
weight or larger; wheat is decoration only (pips, stars, footer headings on pine). 17.5px
body — the largest base size of the five, chosen for a senior-heavy audience. Drawer manages
`aria-expanded`, a scrim, body scroll lock, focus move-in, Escape to close, and focus
restore. Photo placeholders all carry `role="img"` and descriptive labels. Star rows have
`aria-label`s. Locations spell out accessible-entrance and elevator details as content, not
just markup. Touch targets ≥52px.

### Best fit for
Long-established independent practices in a defined geography, especially with a
multi-generational or senior-weighted panel, competing against hospital-owned clinics on
familiarity. Also the right pick for a practice that genuinely prefers phone contact.

---

## 5 · Harbor Now

**File:** `5-harbor-now.html`

### Brand personality
Direct to the point of bluntness. Answers one question — *can I be seen today* — before
anything else, and tells you honestly when the answer should be "go to the ER instead."
Utilitarian, high-signal, zero decoration. Trustworthy because it isn't selling.

### Desktop layout
A 60px near-black bar with a 3px orange bottom border, monospace nav, a pulsing
open/closed LED, and a small Book button. The hero is a **1.5fr / 1fr status board**: left
is an enormous uppercase headline with the word "today" in orange; right is a bordered dark
panel of four live stats — clinic open/closed with closing time and a running clock,
same-day slots left with a strip of time chips (expired ones struck through), current
walk-in wait, and next routine opening. Below, a **three-step booking strip** on light grey
("Booked in 90 seconds"). Then "what we can handle today" as a **chip cloud** of 21 flat
bordered terms — no cards, no icons — followed by a two-column split whose right side is a
blunt "go elsewhere for these" list of six red-crossed emergency signs and a black 911
callout. Visit types are flat three-column rows with monospace durations. Providers are a
four-across **on-shift strip** on black with green/grey status dots. The rating is one
enormous 9.5rem "4.9" beside three quotes. Insurance is a dense inline list plus a
**published self-pay price table**. Locations are two big blocks with badges computed from
the posted hours.

### Mobile layout
The most aggressive re-layout of the five. The hero switches to `flex-direction: column` and
the **live status panel is moved above the headline with `order:-1`** — on a phone, the
answer comes before the pitch. The in-hero button pair is then **removed entirely** because
a fixed dual-action bar (transparent-bordered **Call now** + solid orange **Book today**,
both 56px) is permanently docked at the bottom; duplicating it in the hero would waste the
most valuable screen space. The three-step strip goes single-column; insurance becomes a
two-column bordered grid; the on-shift strip and location blocks go single-column with
horizontal rules; the 9.5rem rating drops to 4.6rem. Nav is a black full-width sheet whose
trigger toggles between "Menu" and "Close" as text.

### Visual design system
- **Palette:** near-black `#111114` + `#1c1c21`, white, off-white `#f4f4f2`, signal orange `#e14b06` + `#b83a03`, go-green `#0d8a4f` / `#2ecc71` for open states. Five colors total, three of them neutral
- **Typography:** Helvetica Neue / Inter at 700, **uppercase, −3.5% tracking**, headline up to 5.1rem. Monospace at 11px/0.13em for every label, status, and duration. The tight uppercase display is the whole identity
- **Card style:** none. Thick 3px rules divide major sections, 1px rules divide rows, and chips/blocks are flat with 2–3px borders. No shadows, no gradients, 2px radius maximum
- **Border radius:** 2px. Effectively none
- **Spacing density:** tight and functional. 70px sections but dense rows — built for scanning, not lingering
- **Icon style:** zero pictorial icons. Status dots, `✕` marks, `→` arrows. Meaning is typographic
- **Button style:** big flat rectangles, 3px borders, 60px min height, 17px uppercase 700 labels. Orange primary, black secondary, outline tertiary. Nothing rounded, nothing soft
- **Imagery:** **no photography at all** — the only concept without any. Data, type, and rules do the work, which also makes it the fastest to load and the easiest to keep accurate
- **Live logic:** open/closed derived from an hours table per weekday and repainted every 30s; the header LED, hero status, and both location badges all read from it. Same-day slot chips expire against the real clock (a 30-minute cutoff) and the remaining count recomputes; when the clinic is closed the count reads 0 and a note explains slots release at 7:00 am

### Homepage section order
Header (LED status) → hero status board (panel first on mobile) → 3-step booking strip →
what we treat (chip cloud) + what to take to the ER → visit types & timing rows → who's on
shift (black band) → 4.9 rating + quotes → insurance + self-pay price table → locations with
live badges → Book now + privacy → black footer with emergency numbers → permanent dual-action
bar

### What makes it different
The only concept whose hero is **live operational data instead of a marketing message**, the
only one that **reorders content between breakpoints** (status above headline), the only one
that **tells patients not to come** when it's an emergency, the only one publishing a
**self-pay price table**, and the only one with no photography.

### Hero content & CTA treatment
Orange monospace eyebrow "Same-day family medicine · Bayview" → H1 *"See a doctor today."*
with "today" in orange → sub on board-certified physicians, same-day sick visits, and routine
care that doesn't take three weeks → orange **Book Appointment** + black **Call Now**, both
flex-filling to ≥210px. The real CTA support is the adjacent panel: "Open now / closes 6:00
pm", "4 same-day slots left today" with visible times, "18 min current wait". Urgency is
*factual*, never manufactured — no countdown timers, no fake scarcity.

### Trust-building
Honesty is the trust mechanism. The "go elsewhere" list and 911 callout cost the practice
visits and are the most credible thing on the page. Published self-pay pricing ($135 sick
visit, $210 physical, $85 telehealth, $35 rapid test) with "we tell you the price before you
book. No surprise billing." Live open/closed status derived from real hours. On-shift
providers with certifying bodies and languages, including honest "Back Wednesday" and
"Northgate today" states. A "not a walk-in box" paragraph clarifying it's a full family
medicine practice. 4.9 at 9.5rem with the 812 count and three attributed quotes. A
3px-bordered privacy block on portal-only booking, no PHI by form, and 911. The footer
carries the nearest ED address and Poison Control.

### Booking UX
**Desktop:** header Book button, hero pair, the 3-step "booked in 90 seconds" explainer that
removes friction anxiety, per-provider links, per-location Book buttons, closing block.
**Mobile:** the **permanent dual-action bar never leaves the viewport** — Call now and Book
today, 56px each, side by side in the thumb zone, present from the first pixel of scroll
(unlike Concept 1's scroll-triggered bar). Combined with the status panel appearing first,
a patient can go from landing to booking intent without scrolling at all.

### Accessibility decisions
Near-black on white ~17:1; white on near-black ~17:1. Orange `#e14b06` on white ~4.5:1 —
used for large text, borders, and the 700-weight uppercase labels, never small body copy.
Green `#0d8a4f` on white ~4.5:1 for badges; the brighter `#2ecc71` appears only on the dark
panel where it clears easily. Every status is text plus color, never color alone ("Open now",
"Closed at 6:00 pm", "Back Wednesday"). Expired slot chips get `title` text alongside the
strikethrough. The LED pulse animation is disabled under `prefers-reduced-motion` along with
all transitions. Buttons at 56–60px — the largest of the five. Uppercase is confined to
headings, labels, and buttons; body copy stays sentence case, since all-caps running text
harms readability. Menu toggle updates both `aria-expanded` and its visible label.

### Best fit for
Practices where same-day access is the actual differentiator, urgent-care/primary-care
hybrids, and any clinic where most traffic arrives from a phone search made in the moment of
need ("doctor open now near me"). Also the best template for a practice that wants to compete
on transparency of price and availability.

---

## Strongest concept by goal

| Goal | Winner | Why |
|---|---|---|
| **Highest trust** | **1 · Harbor & Oak** | Editorial restraint reads as competence and seniority. Long-form bios, a single considered pull quote, no urgency devices, no stock-photo gloss. Nothing on the page is trying to close you, which is precisely why it lands. Runner-up: Harbor Now, which earns trust the opposite way — by publishing prices and telling you when not to come. |
| **Best mobile conversion** | **5 · Harbor Now** | Live availability answers the deciding question in the first viewport with zero scrolling, the status panel is reordered above the headline on phones, and the dual-action bar is docked in the thumb zone from the first pixel. Two taps from landing to booking intent. Runner-up: Harbor Bright's bottom tab bar. |
| **Best for families** | **2 · Harbor Bright** | Age bands from babies to seniors, a warm palette that lowers waiting-room dread, providers humanized with fun facts, and swipe carousels plus a bottom tab bar designed for one-handed use while holding a child. |
| **Best modern telehealth positioning** | **3 · Harbor Connect** | Telehealth is a first-class tab, a toggle in the booking widget that changes real availability, and a headline KPI (41% of visits by video) — not a bullet in a services list. The whole design argues operational modernity. |

---

## Shared implementation notes

All five are single self-contained HTML files. No build step, no external requests, no
fonts or scripts fetched from a CDN — they work offline and on any static host.

Common to every concept:

- One `<h1>`, landmark elements, a skip link, `lang="en"`, visible `:focus-visible` rings
- `prefers-reduced-motion` disables smooth scroll, transitions, and animation
- Body ≥16.5px; all interactive targets ≥44px, most ≥52px
- Photographic placeholders carry `role="img"` with a description of the intended shot
- No page scrolls horizontally; wide content sits in its own `overflow-x:auto` container
- A visible privacy notice: booking happens in a HIPAA-compliant portal, no clinical
  information is collected on the page, and emergencies go to 911
- No web form collects symptoms or diagnoses in any concept — this is a design decision,
  not an omission

### Required before real-practice use

1. Every provider, review, price, phone number, address, and availability figure is
   fictional placeholder content.
2. Insurance lists must come from the practice's actual contracts.
3. Concept 3's slot picker and Concept 5's status board use deterministic demo logic and
   must be wired to the real scheduler/EHR.
4. Photography needs signed releases for any identifiable patient or staff member.
5. Any clinical content — Concept 5's triage list in particular — requires review and
   sign-off by a licensed clinician at the practice.
