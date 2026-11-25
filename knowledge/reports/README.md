# Reports

**Still to be moved** (see `architecture/Vault Architecture.md`). A new report file every week is a log, so this folder is on its way out. Until the lessons that write here change, keep it small:

- **One file per kind of report, replaced each time.** A new site audit replaces the old site audit. Don't keep a pile of dated copies: git keeps the old versions if you ever need one (`git log -- knowledge/reports/<file>`).
- **The numbers live in your tools.** Visitors and searches: Google Analytics and Search Console. Ads: your ad account. Read them there when you need them.
- **The weekly traffic report** runs in your headquarters repo as a GitHub Action, and its report stays on the run's page on GitHub. It is never saved here (`routines/weekly-traffic-report/README.md`).

**What never goes here:** a report for one client (`clients/<client>/`), raw exports or data dumps, keys.

The reports your lessons make, once their teams are built:
- `site-audit.md` from the Website Team's "audit my site"
- `marketing-checkup.md` from the Research Team's "run my marketing checkup"
- `content-stats.md` from the Social Manager's read-the-stats (the opener and topic scoreboard)
- `ads-ready.md` from the Growth Lead's ads-ready-check
- `ads.md` from the Growth Lead's weekly-ads-read

If a lesson's skill names a dated file (like `ads-2026-11-25.md`), save it under the plain name above instead, replacing the old one.
