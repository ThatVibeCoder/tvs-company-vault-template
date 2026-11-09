# TVS Company Vault Template

The company, as files: who the company is, how it works, and every department, agent team and skill. One copy per company, opened in Obsidian and read by every AI (Claude Code, Codex, Cursor, Gemini).

## What's in this repo
- `START-HERE.md`: the front door. Where everything is, here or somewhere else.
- `business.md`, `brand/`, `knowledge/`: what the business is, how it looks and sounds, what's been learned.
- `company/`, `operations/`, `sales/`, `marketing/`: strategy, team, finances, onboarding, policies, playbook, compliance, sales process, offers, scripts, sales psychology, social media (every platform: page, frameworks, hooks), websites.
- `departments/`: departments → agent teams → team members → skills. Ships with the Dev Team; lessons and skill docs add the rest.
- `AGENTS.md`, `CLAUDE.md`, `GEMINI.md`: the rules every AI follows.
- `.claude/`, `.agents/`, `.cursor/`, `.gemini/`: the shortcuts that make every skill work in each AI. Built by sync; never edited by hand.
- `tools/sync.py`, `tools/install-skills.sh`: build the shortcuts; make the skills work from any folder.

## The vault is the knowledge base, and a router
This vault holds most of the company's knowledge. When a company keeps something somewhere else on purpose (Notion, a CRM), the matching section here **points to the exact page instead of copying it**, so information never doubles up.

## How the owner uses it
1. **Use this template** on GitHub → your own copy, named `<company>-company-vault`. Keep it private.
2. Download it and open the folder in Obsidian (Manage vaults → Open folder as vault).
3. Fill `business.md`, `brand/` and the sections. Every empty page says `_Not filled in yet._` and what belongs there.
4. Open your AI in the folder and run your teams (`/dev-team`, and the skills your lessons install).
5. Add a new skill → run `python3 tools/sync.py` (Windows: `py tools/sync.py`) → it works in every AI.
6. Optional: `bash tools/install-skills.sh` makes the skills work from any folder on your computer.

## How an employee uses it
1. The owner gives them **read access** to the company's vault repo.
2. They download it, open it in Obsidian, and run `python3 tools/sync.py` once.
3. They read `START-HERE.md` and `company/onboarding/`, then work through the teams their job needs.
4. They don't change the vault directly: a better way of doing something goes in as a proposed change (a pull request) that the owner approves.
5. Their own notes, drafts and to-dos go in their own personal vault, not here.

## Who gets what
| Person | Company vault (this repo) | The engine (dashboard, automations, keys) |
|---|---|---|
| Owner | Full access | Full access |
| Tech lead | Full access | Full access |
| Employee | Read-only; changes go in as proposals | No access by default |

## Never in this repo
Keys, passwords or tokens · client personal information · the dashboard · automations that run on their own.

## Not connected to the engine
The engine (dashboard, automations, website files, keys) is a separate repo made from `tvs-marketing-department`. Neither repo reads, writes or runs the other; this sentence is the only link. When a whole team needs one shared view, that's a database backend with logins (a company app), never repo-to-repo.
