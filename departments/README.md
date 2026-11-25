# Departments

Your agent teams. Departments hold agent teams, agent teams hold team members, and team members hold skills (the steps for one job).

```
departments/<department>/README.md                      the department
departments/<department>/<team>/team.md                 a team: its members and workflows
departments/<department>/<team>/<member>/<member>.md    a team member: its job and its edges
departments/<department>/<team>/<member>/skills/<skill>/SKILL.md   one skill
departments/<department>/<team>/<member>/output/        that member's finished work
```

**What goes here:** teams, team members, skills, and each member's finished work in its `output/`. It ships with one team, the Dev Team (`it-systems/dev-team/`). Every other team comes from its course lesson, whose skill doc builds it here.

**What never goes here:** client information (`clients/`), logs or run records, the code for jobs that run on their own (your headquarters repo), loose notes. Never make a team folder by hand to hold a file.

**After any change here,** run the sync command (`python3 tools/sync.py`, or `py tools/sync.py` on Windows). It checks the shape and rebuilds the shortcuts (`/dev-team`, `/save-work`) for every AI.

**Example:** type `/dev-team` (or `$dev-team` in Codex) and the Dev Team shows its workflows and runs the one you pick.
