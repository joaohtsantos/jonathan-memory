# TOOLS.md - Local Notes

Skills define _how_ tools work. This file is for _your_ specifics — the stuff that's unique to your setup.

## What Goes Here

Things like:

- Camera names and locations
- SSH hosts and aliases
- Preferred voices for TTS
- Speaker/room names
- Device nicknames
- Anything environment-specific

## Examples

```markdown
### Cameras

- living-room → Main area, 180° wide angle
- front-door → Entrance, motion-triggered

### SSH

- home-server → 192.168.1.100, user: admin

### TTS

- Preferred voice: "Nova" (warm, slightly British)
- Default speaker: Kitchen HomePod
```

## Why Separate?

Skills are shared. Your setup is yours. Keeping them apart means you can update skills without losing your notes, and share skills without leaking your infrastructure.

### Obsidian Vault

- Vault path: `/home/joaohts/obsidian-vault/`
- **Write ONLY inside** `/home/joaohts/obsidian-vault/jonathan/`
- Read anything else freely, never write outside `jonathan/`
- **Git workflow:** Always `git pull` → write → `git add` → `git commit` → `git push`
- **TODOs:** Centralize ALL TODOs in `jonathan/` (TODO-Personal.md, TODO-Segura.md, TODO-Jonathan.md). Always push.
- **Pesquisas e deep dives** vão pro vault (`jonathan/research/` ou similar), não pro workspace local
- **Guia de como o OpenClaw funciona:** `obsidian-vault/jonathan/projects/openclaw-context-deep-dive.md` (context assembly, compaction, heartbeats, etc.)
### Push Notifications
- Script: `/home/joaohts/jonathan-pager/scripts/send-push.sh`
- Uso: `send-push.sh alert "título" "mensagem"`
- App: Pager (Expo/React Native, package `cc.jsplayground.pager`)

### Terminal Chat

- Interactive conversation with me from terminal: `openclaw tui`

### Calendar

- **File:** `/home/joaohts/obsidian-vault/jonathan/calendar.md`
- Informal calendar — João tells me events, I track them there
- Follow Obsidian git workflow (pull → edit → commit → push)

### Cron Jobs (Pi)

**System crontab:**
- Obsidian auto-pull — git pull every 5min
- jonathan-memory backup — workspace sync to GitHub, daily 3 AM

**OpenClaw cron:**
- nightly-sleep — workspace/memory cleanup + daily summary, 0h BRT
- morning-briefing — WhatsApp morning message, 8h BRT
- todo-resolver — picks first unchecked TODO-Jonathan item and tries to complete it, daily
- email-triage — IMAP inbox triage via pager API (disabled)
- nota-fiscal — monthly reminder on the 1st at 10h
- + one-shot reminders (auto-delete after firing)

### Reading List (from email newsletters)
- Newsletters que chegam por email e João quer ler depois
- Adicionar aqui quando um request de newsletter for aprovado
- Incluir no morning briefing

#### Pending
- **"Post-Luxury status symbols #6: Quality Sleep"** — Eugene Healey (Considered Chaos/Substack). Série sobre símbolos de status pós-luxo.

---

### Email Approval Handler

When I receive a system event starting with `Request approved:`, follow this:

**Event format:**
```
Request approved: <uuid>
Type: add_todo | add_calendar | reply_draft | summary
Subject: <email subject>
Summary: <agent's interpretation>
Action: <proposed action>
From: <sender>
To: <recipient>
Date: <email date>
Body: <full email content>
```

**Actions by type:**
- `add_todo` → Add to Obsidian vault TODO (TODO-Personal.md or TODO-Segura.md). Include deadlines, amounts, contacts.
- `add_calendar` → Add to `jonathan/calendar.md`. Format: `- **YYYY-MM-DD (day)** — description [time]`
- `summary` → FYI, no action needed unless content suggests otherwise.

**Rules:**
- Never access emails directly — all data comes through system events only
- Always act on approved requests — if unsure, ask João on WhatsApp
- Follow Obsidian git workflow (pull → edit → commit → push)
- After handling each request, send a push notification via `send-push.sh alert "✅ Request" "<what was done>"` so João knows it was processed
- Log every processed request in `memory/YYYY-MM-DD.md` (daily notes) with what was received and what action was taken

---

Add whatever helps you do your job. This is your cheat sheet.
