# Reference

The long-form reference behind `AGENTS.md`. Nothing here is read up front: `AGENTS.md` names the one section a job needs, and you read that section only. The rules themselves stay in `AGENTS.md`; if this file and `AGENTS.md` ever disagree, `AGENTS.md` wins.

## Where everything goes

Every piece of information has exactly one home. Find it in this table and add to it. Before adding a new kind of file, run the log test in `architecture/Vault Architecture.md`. Never make a second copy somewhere else, because copies drift. "Kept by" names the team member who keeps it once its team's lesson builds that team; until then, the owner and their AI keep it, in the same home. A home inside a team's folder (like a team member's `output/`) only exists once that team's lesson builds it: never make a team folder by hand to hold a file.

| What it is | Its one home | Kept by |
|---|---|---|
| What the business is: what you sell, the money (what a customer is worth, whether they come back, how many more you could take; the price itself lives in `brand/offer.md`, and `business.md` points there), the week, the tools | `business.md` | Company Strategist |
| Who you serve | `brand/icp.md` (your main ICP, read first); another kind of buyer gets `brand/icps/<name>.md` in the same shape, used only when a job names it | Company Strategist |
| The five things that stop a buyer | `brand/friction-points.md` | Company Strategist |
| What you believe that your industry gets wrong | `brand/contrarian-take.md` | Company Strategist |
| What you sell, the price (`brand/offer.md` What It Costs is the price's one home), and the headline | `brand/offer.md` (your main offer, the one the landing page reads); anything else you sell gets `brand/offers/<name>.md` in the same shape | Company Strategist (the headline is written in Chapter 3's Write the Top of Your Page lesson) |
| How you sound: a map of where your real voice lives, plus your best short pieces word for word | `brand/voice.md` | Company Strategist |
| Your content mix and where you post | `brand/channels.md` | Company Strategist |
| Your content topics, and the 4 questions every post answers | `knowledge/topics.md` | Social Manager |
| Every post waiting to go out: one file each, with its platform, status, day and time | your headquarters repo's `posts/` folder (the queue a posting job reads; a post leaves once it's sent). Never in this vault; a sent post lives on the platform | Copywriter writes it, Social Manager dates it; the owner approves it |
| Your website's numbers from Google Analytics and Search Console | never saved here: read them in Google Analytics and Search Console when you need them; the weekly traffic report runs in your headquarters repo (`routines/weekly-traffic-report/README.md`) | Traffic Agent |
| Your payments: revenue, invoices | never saved here: they live with your payment provider, read in the moment with a read-only key in `.env` | Payments Agent (Dev Team) |
| Your openers: the ones that won, and the ones to try next | `knowledge/hooks.md` | Copywriter (read-the-stats marks the winners) |
| Banned words, formatting, never-do calls | `brand/guidelines.md` | whoever was corrected |
| Colors, fonts, logos | `brand/colors.md`, `brand/typography.md`, `brand/assets/` | Designer |
| Your business audit: tools, hours, what to cut and hand off | `knowledge/business-audit.md` | Company Strategist |
| Your goals: the wins, numbers and things you want running next, crossed off as they land | `knowledge/goals.md` | Company Strategist |
| Competitors (one file each: website, where they post and how often, what they lead with), swipes, outliers | `knowledge/competitors/<name>.md`, `knowledge/swipes/`, `knowledge/outliers.md` | Researcher (scan-my-competitors for the first look, competitor-check for the deeper read, collect-swipes for swipes, find-outliers for outliers) |
| Reports (site audits, checkups, content stats) | `knowledge/reports/`, one file per kind, replaced each time (still to be moved: `knowledge/reports/README.md`) | the workflow that made it |
| Your ads: the ready check and the weekly read | `knowledge/reports/ads-ready.md`, `knowledge/reports/ads.md` (each replaced by the next one) | Growth Lead |
| Your ad tests: the plan, the campaign (built paused, you turn it on), the tracking setup, each ad batch | `output/` next to the Growth Lead (`test-plan-<date>.md`), the Ads Manager (`campaign-<date>.md`, `tracking.md`) and the Ad Writer (`batch-<date>.md`) | the Ads Team |
| The strategist's brief for the next team member | `departments/operations/strategy-team/company-strategist/briefs/<YYYY-MM-DD>-<team-member>.md` | Company Strategist |
| Moat scores | `departments/operations/strategy-team/moat-analyst/scores.md` | Moat Analyst |
| Your website's source: the files that go live (the test page first, then your landing page) | your website repo (`<company>-website`, its own repo, made later in the course). Never this vault | Page Builder; the Vercel Agent ships it |
| Every landing page and the pages under it (forms, thank-you pages, upsells, product pages, on any domain), grouped by the offer each one sells | `knowledge/landing-pages.json` (a pointer list; its shape is in `knowledge/README.md`) | Page Builder (build-a-page registers each page); the Vercel Agent marks it live |
| Raw recordings: your phone takes and voice memos before they're edited | never in this vault: they stay where you keep them (your phone, a drive folder); `brand/voice.md` points at where they live | Social Manager |
| Finished work (drafts, pages, documents) | `output/` next to the team member that made it | that team member |
| Your leads: one file per person, with where they came from and where things stand | `departments/sales/sales-team/crm-agent/leads/<lead-name>.md` (still to be moved: a file that grows with every touch is a log, so keep each one short and current; see `architecture/Vault Architecture.md`) | CRM Agent |
| Booking messages | `output/` next to the Calendar Agent (`<date>-book-<lead>.md`) | Calendar Agent |
| Reply drafts and follow-up nudges | `output/` next to the Reply Agent (`<date>-<lead>.md`) and the Nurture Agent (`<date>-<lead>.md`, `<date>-quiet-list.md`) | Reply Agent, Nurture Agent |
| Work that runs on its own: one description page each (the code lives in your headquarters repo or as a scheduled task on your computer) | `routines/<name>/README.md` (the header is in `routines/README.md`) | the team that owns it |
| A client's setup facts, their one allowed log, and anything made for that client | `clients/<client>/setup.md`, `clients/<client>/log.md` (rules in `clients/README.md`) | whoever works with that client |
| How the vault itself is built: the kinds of page, the log test, which page owns a rule | `architecture/Vault Architecture.md` | the owner |

If something truly has no home in this table, ask the owner before making one, then add the new home to this table in the same change.

## The shape: departments, teams, team members, skills

```
departments/<department>/                 a department (marketing, sales, it-systems, operations), with a README.md
  <team>/team.md                          an agent team: its header, members, workflows and memory
  <team>/<member>/<member>.md             a team member: Status, Team, its job, Output, Memory
  <team>/<member>/skills/<skill>/SKILL.md a skill: one job that team member knows how to do
  <team>/<member>/output/                 that team member's finished work
```

- **A team** = a workflow and the skills of its members. Its `team.md` starts with a header (`name`, `command: /<team-folder>`, `department`, `status: seeded|live`, `purpose`), lists its members, and writes each workflow like this:
  ```
  ## Workflow: build my landing page
  Say: "build my landing page"
  Also say: build my website, make my landing page
  When: one line on when to run it.
  ### Plan
  1. **Page Builder** · build-a-page · what happens in this step.
  2. **You** read it and say yes or what to fix. [you approve]
  ### Ship
  3. **Vercel Agent** · ship-a-page · what happens.
  4. **Page Builder** hands it to the next team, with no skill named.
  ```
  Phases are `###` headings. A step is numbered `1. **Team member** · skill-name · what happens` when it runs a skill, or `1. **Team member** what happens` when that member does it without a skill. `[you approve]` marks a stop where the owner has to say yes. `Also say:` lists other ways the owner might ask for it.
- **A team member's file** starts with `**Status:** seeded` (its folder is waiting; a lesson sets it up) or `**Status:** live` (set up and working), then `**Team:**`, then this exact line: "Each skill names the files it reads. Read those, then this file, and stay inside this file's edges." When asked to act as a team member, read its file first and stay inside its edges.
- **A skill** is a folder inside the team member that owns it, with one `SKILL.md` that starts with `name:` (the same as its folder) and `description:` (what it does and the words that should trigger it). Skill names are unique across the whole repo.

## Commands: every team and every skill can be summoned

`.claude/skills/` (Claude Code) and `.agents/skills/` (Codex) hold shortcuts, `.gemini/commands/` (Gemini CLI) and `.cursor/commands/` (Cursor) hold the same ones as commands, and `tools/sync.py` builds every one of them from the folders above. Never write a skill straight into those folders and never edit a shortcut. Put the real skill inside its team member, then run sync. Grok Build reads the same shortcuts from `.agents/skills/` and `.claude/skills/`, so it needs no folder of its own.

After sync, the owner can call:
- a whole team (for example `dev-team`): it shows that team's workflows and skills and runs the one they pick;
- a workflow, by saying its words (for example "ship my landing page") or by its shortcut (`ship-my-landing-page`), to run it start to finish;
- one skill on its own (for example `save-work`).

In Claude Code, Gemini CLI, Cursor and Grok Build, type them with a slash: `/dev-team` (Grok Build loads them only once you've said yes to trusting this folder). In Codex, type them with a dollar sign, `$dev-team`, or pick them from the `/skills` menu. In any other agent, say it: "run my dev team". Saying what you want in plain words works everywhere.

## Adding something new

- **A team from a classroom lesson:** the lesson's skill doc (the Google Drive doc at the bottom of the lesson) says which department and team it builds. Follow it exactly: make `departments/<department>/<team>/team.md` and its team members in the shape above, fill them from the owner's answers, write what it gathers into the homes in the table above, then run sync. If the team's folder is already in `departments/`, build onto it: never replace a team member file or skill that's there without showing the owner what would change and getting a yes. Never touch `business.md` or `brand/` except where the doc says to fill them.
- **A skill from a classroom lesson:** the lesson's doc says which team member it belongs to. Save it to that member's `skills/<skill-name>/SKILL.md`, write the information it gathers into the home from the table above, then run sync.
- **Setting up a seeded team member:** fill in its job in its own file, change `**Status:** seeded` to `**Status:** live`, then run sync.
- **A new team:** teams come from their classroom lesson, whose skill builds the folder, its `team.md` and its team members, then runs sync. Never make a team folder by hand to hold a stray file; move the file to its home in the table above instead.
- **A new team member:** a folder inside its team with `<member>.md` in the shape above and an empty `skills/` folder. Add it to the team's Members list, then run sync.

Before adding anything, check it doesn't already exist under another name. Two team members doing one job, or two skills doing one job, is a bug: build onto the one that's there.

## Memory: where corrections live

Three places hold memory. Each team member file and team file says so too.

- **Business-wide** (how you sound, who you sell to, brand facts): fix the right file from the table above, and add a dated line to that file's `## Updates` section.
- **One team member's own habits** (how THIS member should work): its own `## Memory` section.
- **A whole team's habits** (once more than one member should do something the same way): that team's `## Memory` in `team.md`.

When to write it down: the moment the owner says "always" or "remember", write it right then. If the same correction happens twice, write it the second time. Don't wait for a third. A correction about how the owner sounds gets offered to `brand/voice.md`, and only added once the owner confirms, marked (owner confirmed).

Skills don't hold memory. A skill stays a clean set of steps so it still works if it's shared. What's learned about how the owner wants a job done goes with the team member who runs it.
