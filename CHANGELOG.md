# Changelog

## v5 · 2026-11-25
- Two repos: this vault (knowledge, teams, skills, descriptions of what runs) and your marketing headquarters (the things that run; template github.com/ThatVibeCoder/tvs-marketing-headquarters). README, START-HERE and AGENTS say which is which. The old engine repo is no longer used.
- New `architecture/Vault Architecture.md`: the two jobs of the vault, the three kinds of page, the log test, which page owns a rule, how a section is shaped, how settled each rule is, the map of top folders, and what never goes here.
- New `routines/`: one description page per job that runs on its own, with an example for the weekly traffic report. Sync now checks each routine page's header.
- New `clients/`: one folder per client (`setup.md`, and `log.md`, the one allowed log), with a made-up example client.
- A README in every top folder: what belongs, what never does, one example.
- Removed the dashboard leftovers (the Command Center section in `AGENTS.md` and `docs/REFERENCE.md`, its rows, its `.gitignore` lines and the unused dashboard code in `tools/sync.py`). Website files now live in your website repo (ship-a-page, fix-my-form, the Dev Team's "ship my landing page").
- The log test on `knowledge/`: `outliers.md` keeps only the latest top three, `topics.md` marks a used topic in place, `hooks.md` has a size limit, `reports/` keeps one file per kind (still to be moved), `landing-pages.json` is a pointer list.
- add-from-template fetches from this template (it used to point at the old engine repo).

### How to update
1. Add the new folders from the template, one at a time: `architecture/`, `routines/`, `clients/` (add-from-template, one path each).
2. Add the new top-folder READMEs: `brand/README.md`, `company/README.md`, `departments/README.md`, `docs/README.md`, `marketing/README.md`, `operations/README.md`, `sales/README.md`, `tools/README.md`.
3. Take the new `tools/sync.py`, `AGENTS.md`, `START-HERE.md`, `README.md` and `docs/REFERENCE.md` (show the owner what changes in each first if they edited theirs).
4. Take the new Dev Team skills: `add-from-template`, `ship-a-page`, `fix-my-form`, `security-sweep`, and the Dev Team's `team.md` and Payments Agent files.
5. Take the new `knowledge/README.md`, `knowledge/outliers.md`, `knowledge/hooks.md`, `knowledge/topics.md`, `knowledge/reports/README.md`, `knowledge/swipes/README.md`, `knowledge/packs/README.md`. Keep every line the owner already filled in.
6. Make your second repo from the headquarters template (its README walks you through it).
7. Run the sync command, then save-work.

## v1 · 2026-11-09
- First version of the company vault template: START-HERE front door, the router rule, company / operations / sales / marketing sections, brand, knowledge, departments (Dev Team), rules for every AI (AGENTS.md, CLAUDE.md, GEMINI.md), shortcuts for Claude Code, Codex, Cursor and Gemini, sync and the skill installer. The engine (dashboard, automations, website files, keys) lives in a separate repo.
