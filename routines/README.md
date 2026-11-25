# Routines

This folder **describes** the work that runs on its own: a weekly report, a daily check, a post that goes out at 9 AM. One folder per routine, with one `README.md` inside that says what it does, where it runs, when, and what it needs.

**The code is never here.** It lives in one of two places:
- **Your headquarters repo** (`<company>-marketing-headquarters`, made from github.com/ThatVibeCoder/tvs-marketing-headquarters), as a GitHub Action. GitHub runs it in the cloud, even when your computer is off.
- **A scheduled task on your own computer** (in Claude, Codex or another AI app). It only runs while your computer is on and awake.

## Which one?
**Must it run when you are not there? Then it is a GitHub Action in your headquarters repo. A scheduled task on your computer is a helper, fine for you alone.** Both get one description page here.

## What goes here
- `routines/<routine-name>/README.md`, one per routine, in the shape below.

## What never goes here
- The code, the workflow file or the script: your headquarters repo.
- Keys or secrets: GitHub secrets in your headquarters repo, or the `.env` file on your computer.
- What happened each time it ran: that's a log. Open the run on GitHub (your headquarters repo's Actions tab) or in your AI app instead.

## The shape of a routine page
Every routine's `README.md` starts with this header:

```
---
name: Weekly Traffic Report
team: Dev Team
status: planned
runs_on: github-actions
schedule: every Monday at 8:00 AM
purpose: "One sentence on what it does."
---
```

- `status:` is `planned` (described, not running yet) or `live` (running).
- `runs_on:` is `github-actions` (in your headquarters repo) or `your-computer` (a scheduled task on your computer).
- `schedule:` says when, in plain words. Leave it empty if it only runs when you start it.
- Wrap `purpose:` in double quotes if it has a `:` in it.

Under the header, five short sections: **What it does**, **Where it runs** (the exact file in your headquarters repo, or the app that holds the scheduled task), **When**, **What it needs** (every key by name, and where it's kept: never the key itself), and **The how-to** (a link to the page that owns the steps). The steps themselves live with the code, in your headquarters repo: one rule, one page (see `architecture/Vault Architecture.md`).

After you add or change a routine page, run the sync command (`python3 tools/sync.py`, or `py tools/sync.py` on Windows). It checks the header.

## Example
`weekly-traffic-report/README.md` describes the example job that ships in the headquarters template.
