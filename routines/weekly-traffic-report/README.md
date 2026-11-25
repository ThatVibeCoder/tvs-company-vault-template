---
name: Weekly Traffic Report
team: Dev Team
status: planned
runs_on: github-actions
schedule: every Monday at 13:00 UTC
purpose: "Reads Google Search Console and Bing for your site every Monday and writes a short report on last week, in plain words."
---
# Weekly Traffic Report

This is an **example** description page. It describes the example job that ships in the headquarters template. Change `status:` to `live` once it runs in your own headquarters repo.

## What it does
Every Monday it reads how many people found your site on Google and Bing last week (clicks, how often you showed up, your average spot, your top searches and top pages) and writes a short report. It only reads. It never changes anything on Google, Bing or your site.

## Where it runs
A GitHub Action in your headquarters repo, so it runs even when your computer is off:
- the job: `automations/weekly-traffic-report/`
- the schedule: `.github/workflows/weekly-traffic-report.yml`

## When
Every Monday at 13:00 UTC (early morning in the US). You can also start it any time from the Actions tab on GitHub (**Run workflow**).

## What it needs
- `GSC_SERVICE_ACCOUNT_JSON`: lets it read Google Search Console. A GitHub secret in your headquarters repo.
- `BING_WEBMASTER_API_KEY`: lets it read Bing Webmaster Tools. A GitHub secret in your headquarters repo.
- Your site's address, in `config/sites.json` in your headquarters repo.

Never write a key on this page. Only the name, and where it's kept.

## Where the report goes
On the run's page on GitHub (the Actions tab). It is never saved into this vault: a pile of weekly reports would be a log. When you want last week's numbers, open the latest run, or ask your AI to read Search Console directly.

## The how-to
Setting it up, running it, and what to do when it fails: `automations/weekly-traffic-report/README.md` in your headquarters repo (template: github.com/ThatVibeCoder/tvs-marketing-headquarters). Your course lesson walks you through it.
