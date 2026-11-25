# Vault Architecture

How this vault is built, what belongs in it and what never does. Read this before you add a page, a folder or a new kind of file. It is written for you and for any AI working in this folder. The day-to-day rules for your AI are in `AGENTS.md`; this page is the why and the shape behind them.

**In one line:** this vault is your company's knowledge base and a map. It holds what you know and how you do things, it points to where live information sits so your AI can go read it in the moment, and it is never a log.

## The two jobs of this vault
1. **It is the knowledge base.** Who you are, who you sell to, how you sound, what you've learned, how each job gets done.
2. **It helps your AI actually do things.** Your agent teams and their skills live in `departments/`. A good page doesn't just explain a topic: it tells your AI which job page to follow, and that job page ends in a saved file.

If a page does neither job, it doesn't belong here.

## The three kinds of page

| Kind | What it holds | Example in this vault |
|---|---|---|
| **Knowledge** | What you know, and why | `brand/icp.md` (who you sell to), `knowledge/competitors/<name>.md` |
| **How-to** | The steps for one job, in order, with a check at the end | a skill's `SKILL.md`, a page in `operations/playbook/` |
| **Pointer** | Where something lives and how to read it right now | `knowledge/notion-map.md`, `brand/voice.md` (a map of where your real words live) |

A page can mix these. No page is a running record.

## The log test
Ask one question before you add anything: **will this get a new row or a new file every time something happens?**
- **Yes:** it is a log. It does not go in this vault. Point at where it already lives (the table below).
- **No:** it is knowledge, a how-to or a pointer. It belongs here.

Things that pass the test: your ICP, your offer, a competitor's page, the steps to ship a page, the list of tools you use.
Things that fail it: every post you sent, every lead, every report a job makes each week, every time a job ran, a diary of what your AI did today.

### Where live information lives instead
| The information | Where it lives | How your AI gets it |
|---|---|---|
| Your posts and how they did | The platform itself (or the queue in your headquarters repo before it goes out) | Read it on the platform when you need it |
| Leads, customers, deals, tasks | Your CRM or Notion (if you use one) | Its connection; every id goes in `knowledge/notion-map.md` |
| Website visitors and searches | Google Analytics and Search Console | Their connections, at the time of the question |
| Your website's pages | Your website repo | Read the code |
| What ran on its own, and when | Your headquarters repo (its GitHub Actions page) | Open the run on GitHub |
| When a page changed and what changed | git (the save history) | `git log -- "<file>"` |

**A pointer says three things:** where it lives, how to read it (which connection or web address), and what to take from it. It never holds a copy.

## Which page owns a rule
- **A rule lives on one page.** The how-to page owns it and says it.
- **A knowledge page explains why,** and links to the how-to. It never says the rule again.
- **Never both.** Two pages saying the same rule drift apart, and then your AI has to guess which one is right.

Example: the steps to ship a page live in the Vercel Agent's `ship-a-page` skill. A page about your website can say why you ship small changes often, then link to that skill. It doesn't copy the steps.

## How a section is shaped
When you build out a topic (say, everything you know about getting found on Google), shape it like this:
- **One flat folder.** No folders inside folders unless there's a real reason.
- **At most about ten pages.** More than that and nobody, human or AI, finds anything.
- **A front page that routes:** which page to open for which question or job.
- **One job page** your AI can follow step by step, which ends in a saved file (for example a plan in `output/`, or a file in a client's folder).
- **Merged knowledge pages:** one idea or question each. When two pages say nearly the same thing, merge them.

Before you remove or merge pages, check the old ones line by line: every fact, number and decision ends up on a new page, or gets cut on purpose with a reason.

## Every rule says how settled it is
Mark each rule as one of three kinds, so your AI never treats a guess as law:
- **You decided** (with the date): "You decided, 2026-11-25: we never post on Sundays."
- **How you do it today** (not decided, just the habit): "How we do it today: one newsletter a week."
- **Not settled** (both sides in a line, and what to do meanwhile): "Not settled: a second newsletter. Until you decide, one a week."

Never write an AI's own idea, or an idea from someone else's video or post, as if you decided it. Never invent a number or a limit.

## The one allowed log: a client's `log.md`
If you do work for clients, each client gets a folder in `clients/`, and inside it **one** log: `clients/<client>/log.md`. It's there so nothing about a client gets missed when you come back to them weeks later. It is the only log in the whole vault. What goes in it, and what never does, is in `clients/README.md`.

## Already here, kept on purpose
These don't fully pass the log test, and they stay for now:
- **`knowledge/reports/`:** the one folder of dated files the course uses, because your lessons read the newest report by name. Keep a few of each kind, not a running record (`knowledge/reports/README.md`).
- **Lead files in a Sales Team folder** (`departments/sales/.../leads/`, if your Sales Team lesson builds them): one file per lead that grows with every touch. Not settled: by the log test leads belong in your CRM or Notion. Until the lesson moves them, keep each lead file short and current (who, where they came from, where things stand), not a diary.
- **The "Updates" lines at the bottom of pages:** one dated line per change to that page. Not settled: they help you see what changed, but git already keeps that history.

Already converted: `knowledge/outliers.md` holds only the latest top three (replaced each run), `knowledge/topics.md` marks a used topic `(used)` in place, and `knowledge/hooks.md` was folded into `marketing/social/hooks/<platform>.md`.

## Where everything is
| You're looking for | Go to |
|---|---|
| The rules every AI follows here | `AGENTS.md` (every AI reads it on its own) |
| Where to start, for a person | `START-HERE.md` |
| How this vault is built (this page) | `architecture/` |
| What the business is, the money, the week, the tools | `business.md` |
| Who you serve, your offer, voice, colors, fonts | `brand/` |
| Strategy, team, finances, a new teammate's first day | `company/` |
| How-to pages, policies, compliance | `operations/` |
| Your sales process, scripts, sales psychology, offers | `sales/` |
| Social media (every platform) and your website notes | `marketing/` |
| What you've learned: competitors, swipes, topics, goals | `knowledge/` |
| Departments, agent teams, team members, skills | `departments/` |
| Descriptions of what runs on its own | `routines/` (the code lives in your headquarters repo) |
| Each client's setup facts, their one log, and anything made for them | `clients/<client>/` |
| The long reference: every home, every format | `docs/REFERENCE.md` |
| The sync command and the skill installer | `tools/` |

A new top folder needs your yes, a README inside it, and a row in this table.

## The two repos (and a third, later)
You keep two repos from day one, and they never connect:

| Repo | What it holds | Public template |
|---|---|---|
| **Your company vault** (this one, `<company>-company-vault`) | Knowledge, brand, agent teams, skills, and descriptions of what runs | github.com/ThatVibeCoder/tvs-company-vault-template |
| **Your marketing headquarters** (`<company>-marketing-headquarters`) | The things that run: automations, GitHub Actions, the posting queue, the dashboard picture | github.com/ThatVibeCoder/tvs-marketing-headquarters |

Later in the course your website gets **its own repo** (`<company>-website`), because every save to a website repo can put the site live, and you don't want a change to an automation doing that.

**What never goes in this vault:**
- **Code that runs** (scripts, scheduled jobs, GitHub Actions): your headquarters repo. This vault only keeps one description page for each, in `routines/`.
- **Your website's files:** your website repo.
- **Keys, passwords, tokens:** the `.env` file on your computer, or GitHub secrets in your headquarters repo. Never in a page.
- **Logs and dumps** (see the log test above).

## Changes to this page
This page is how the vault is built. Change it only when you decide to, and write the date and what you decided.
