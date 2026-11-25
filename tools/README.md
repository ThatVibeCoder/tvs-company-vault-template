# Tools

The two small programs that keep this vault working. Your AI runs them; you can too.

| File | What it does | Run it |
|---|---|---|
| `sync.py` | Checks the shape of `departments/` and `routines/`, then rebuilds every shortcut (`.claude/`, `.agents/`, `.cursor/`, `.gemini/`) and the `CLAUDE.md` and `GEMINI.md` pointers | `python3 tools/sync.py` (Windows: `py tools/sync.py`). Add `--check` to change nothing and only report |
| `install-skills.sh` | Makes your skills work from any folder on your computer (Claude Code) | `bash tools/install-skills.sh` (`--uninstall` removes only what it installed) |

**What goes here:** only the programs that check and build this vault.

**What never goes here:** jobs that run on their own, scripts that call other tools, anything that needs a key. Those live in your headquarters repo.

**Example:** you saved a new skill. Run `python3 tools/sync.py`, and `/your-skill` works in every AI.
