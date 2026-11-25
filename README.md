# TVS Company Vault Template

The company, as files: who the company is, how it works, and every department, agent team and skill. One copy per company, opened in Obsidian and read by every AI (Claude Code, Codex, Cursor, Gemini).

## You need two repos
| Repo | What it's for | Template |
|---|---|---|
| **Your company vault** (this template) | Knowledge, brand, agent teams, skills, and one description page for each job that runs on its own. It's what your AI reads. | github.com/ThatVibeCoder/tvs-company-vault-template |
| **Your marketing headquarters** (your second repo) | The things that run: automations, GitHub Actions, the posting queue, the dashboard picture. | github.com/ThatVibeCoder/tvs-marketing-headquarters |

They never connect, with one exception: the headquarters dashboard reads this vault's team folders to draw its picture. Nothing in this vault reads or runs the headquarters. Later in the course your website gets a third repo of its own.

## What's in this repo
- `START-HERE.md`: the front door. Where everything is, here or somewhere else.
- `architecture/`: how this vault is built: the three kinds of page, the log test, which page owns a rule, how a section is shaped. Read it before adding a folder.
- `business.md`, `brand/`, `knowledge/`: what the business is, how it looks and sounds, what's been learned.
- `company/`, `operations/`, `sales/`, `marketing/`: strategy, team, finances, onboarding, policies, playbook, compliance, sales process, offers, scripts, sales psychology, social media (every platform: page, frameworks, hooks), websites.
- `departments/`: departments → agent teams → team members → skills. Ships with the Dev Team; lessons and skill docs add the rest.
- `routines/`: one description page for each job that runs on its own (what it does, where it runs, when, what it needs). The code lives in your headquarters repo.
- `clients/`: for members who do client work: one folder per client, with its setup facts and the one allowed log.
- `AGENTS.md`, `CLAUDE.md`, `GEMINI.md`: the rules every AI follows.
- `docs/REFERENCE.md`: the long reference (every home, every format).
- `.claude/`, `.agents/`, `.cursor/`, `.gemini/`: the shortcuts that make every skill work in each AI. Built by sync; never edited by hand.
- `tools/sync.py`, `tools/install-skills.sh`: build the shortcuts; make the skills work from any folder.

Every top folder has a `README.md` that says what belongs there and what never does.

## The vault is a knowledge base, never a log
This vault holds what the company knows and how it does things. When something lives somewhere else on purpose (Notion, a CRM, Google Analytics, the platform you post on), the page here **points to the exact place instead of copying it**, so information never doubles up and your AI reads the real thing in the moment. Anything that would get a new row every time something happens is a log, and logs don't go here (the one exception is a client's `log.md`).

## How the owner uses it
1. **Use this template** on GitHub (the green "Use this template" button) → your own copy, named `<company>-company-vault`. Keep it private.
2. Download it (`git clone <your copy's address>`) and open the folder in Obsidian (Manage vaults → Open folder as vault).
3. Do the same for your second repo: **use the headquarters template** (github.com/ThatVibeCoder/tvs-marketing-headquarters) → `<company>-marketing-headquarters`, private, and clone it next to this one. Don't open it in Obsidian.
4. Fill `business.md`, `brand/` and the sections by talking to your AI. Every empty page says `_Not filled in yet._` and what belongs there.
5. Open your AI in this folder and run your teams (`/dev-team`, and the skills your lessons install).
6. Add a new skill → run `python3 tools/sync.py` (Windows: `py tools/sync.py`) → it works in every AI.
7. Optional: `bash tools/install-skills.sh` makes the skills work from any folder on your computer.

## How an employee uses it
1. The owner gives them **read access** to the company's vault repo.
2. They download it, open it in Obsidian, and run `python3 tools/sync.py` once.
3. They read `START-HERE.md` and `company/onboarding/`, then work through the teams their job needs.
4. They don't change the vault directly: a better way of doing something goes in as a proposed change (a pull request) that the owner approves.
5. Their own notes, drafts and to-dos go in their own personal vault, not here.

## Who gets what
| Person | Company vault (this repo) | Marketing headquarters (automations, keys as GitHub secrets) |
|---|---|---|
| Owner | Full access | Full access |
| Tech lead | Full access | Full access |
| Employee | Read-only; changes go in as proposals | No access by default |

## Never in this repo
Keys, passwords or tokens · private client details the work doesn't need · logs · code that runs on its own (your headquarters repo) · your website's files (your website repo).
