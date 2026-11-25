# Knowledge

What your business has learned, filed so any team member can find it. `business.md` and `brand/` say who you are; this folder holds what you've found out.

**What goes here:** knowledge (what you know and why) and pointers (where live information sits and how to read it). Every page here passes the log test: it does not grow a new row or a new file every time something happens (see `architecture/Vault Architecture.md`).

**What never goes here:** logs (every post, every lead, every run), copies of things that live in another tool (point at them instead), anything about one client (`clients/<client>/`), keys or passwords. Never loose files at the top of `knowledge/`: file a finding in the folder below that fits, and ask before making a new one.

| What | Where | Kind | Filled by |
|---|---|---|---|
| Your business audit: tools, hours, what to cut, what to hand off first | `business-audit.md` | knowledge | the Cut What You Don't Need lesson |
| Your goals: what you're going after next, crossed off as they land | `goals.md` | knowledge | the Future Achievements lesson |
| Your content topics and the 4 questions every post answers | `topics.md` | knowledge | the Pick Your Platforms lesson |
| Your openers: the ones that won for your buyer, and the ones to try | `hooks.md` | knowledge | the Content Team lesson |
| One file per competitor, plus the summary | `competitors/` | knowledge | the Research Team lesson |
| Marketing that works, one file per shape worth stealing | `swipes/` | knowledge | the Research Team lesson |
| The post shapes beating their channel's size in your space | `outliers.md` | knowledge (still to be moved, see below) | the Research Team lesson |
| What gets built when someone buys each offer | `offers/` | knowledge | the Build Your Offer lesson |
| Where your work lives in Notion or your CRM: every database and its id | `notion-map.md` | pointer | you, the day you connect it |
| Every landing page you have, which offer it sells, and where it lives | `landing-pages.json` (shape below) | pointer | the Website Team lesson's Page Builder adds each page; the Dev Team's ship-a-page marks it live |
| Packs from the community, one folder per team they feed | `packs/` | knowledge | you, when a pack arrives |
| Reports a team workflow makes | `reports/` | still to be moved, see below | the team workflows that make them |

Team members read their team's packs and the files above before big builds, the same way they read `brand/` before writing.

## Still to be moved
Two homes here don't fully pass the log test yet, because the lessons that write them still say to add to them. Until those lessons change, follow these limits:
- **`reports/`:** each report replaces the last one of its kind instead of stacking up (see `reports/README.md`). The numbers themselves live in your tools; the weekly traffic report runs in your headquarters repo and stays on GitHub.
- **`outliers.md`:** keep only the latest top three. A new run replaces the old block instead of adding one on top.

## landing-pages.json

A pointer list: every page you have, which offer it sells, and where it lives. The page files themselves live in your website repo, never here. One entry per page:

```json
{
  "pages": [
    { "id": "gift-box", "title": "The Gift Box", "kind": "landing", "parent": null,
      "domain": "www.example.com", "route": "/gift-box", "url": "https://www.example.com/gift-box",
      "file": "gift-box/index.html", "offer": "brand/offer.md", "purpose": "Sell the Gift Box to gift buyers",
      "status": "live", "built": "2026-11-07", "shipped": "2026-11-08" },
    { "id": "gift-box-thanks", "title": "Thanks for your order", "kind": "thank-you", "parent": "gift-box",
      "route": "/gift-box/thanks", "file": "gift-box/thanks.html", "offer": "brand/offer.md", "status": "draft" }
  ]
}
```

- `id`: short, lowercase, dashes, never reused. `parent` is the `id` of the page this one sits under (its form, its thank-you page, its upsell, a product-specific version), or `null` for a main landing page.
- `kind`: `landing`, `product` (a page for one product or offer, often on its own domain), `form`, `thank-you`, `upsell` or `other`.
- `offer`: which offer file the page sells (`brand/offer.md` or one in `brand/offers/`).
- `domain`, `route`, `url`: where it lives. A page on another domain just names that domain. `url` stays empty until it ships.
- `file`: the page's file inside your website repo (or empty if a site builder like Wix or Squarespace holds it).
- `status`: `draft` until ship-a-page puts it live, then `live`. `built` and `shipped` are dates (YYYY-MM-DD).
- Visits are never saved here: read them in Google Analytics when you need them.
