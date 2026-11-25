# Clients

**For members who do work for clients.** If you only market your own business, you can leave this folder as it is.

One folder per client: `clients/<client-name>/` (short, lowercase, dashes, like `example-bakery`). Copy `example-bakery/` to start one, then replace every line with your client's facts.

## What goes in a client's folder
- **`setup.md`: the facts about that client's setup.** Who they are, who you talk to and how, what you built for them, where each piece lives (their site, their accounts, their tools), and the house rules for working with them. It changes when the setup changes, not every time something happens.
- **`log.md`: the one allowed log in the whole vault.** See below.
- **Anything made for this one client** (a plan, a keyword list, a report you hand them): it lives in this client's folder, never in `knowledge/` or a team's `output/`.

## The one allowed log: `log.md`
Everywhere else in this vault, a page that grows a new line every time something happens is a log, and logs don't belong here (see `architecture/Vault Architecture.md`). A client's `log.md` is the one exception, so nothing about a client gets missed when you come back to them weeks later.

**What goes in it:**
- what you and the client said (texts, calls, emails), in a line or two;
- what you decided for this client, with your AI or on your own (a change of plan, an idea to come back to);
- what you sent them, and whether they answered;
- open threads: what you're waiting on, and who has the next move.

**What never goes in it:**
- a copy of your task list or project tracker (task status stays where you track tasks);
- prices, passwords, keys or logins;
- full copies of messages (one line on what it said, and where it was sent);
- personal details the work doesn't need.

**The top of every log says where else to look,** because the log is not the only record: the client's page in your CRM or Notion, your email, your texts, and any forms they filled in.

**How an entry looks:** newest on top, one bullet, at most three lines:
`- **2026-11-25** · You ↔ Dana (call) · what happened or was decided. **Next:** who does what, and where it's tracked.`

**When to write one:** the same day something about the client happens.

**Before working on a client:** read their `setup.md`, then their `log.md`.

## What never goes in this folder
- Your own business's knowledge (that's `knowledge/`, `brand/`, `business.md`).
- A client's website files (their site has its own repo).
- Keys or passwords for a client's accounts (the `.env` file, or a password manager).

## Example
`example-bakery/` is a made-up client: a filled-in `setup.md` and `log.md` so you can see the shape.
