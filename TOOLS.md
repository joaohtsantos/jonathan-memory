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

### Push Notifications
- Script: `/home/joaohts/jonathan-pager/scripts/send-push.sh`
- Uso: `send-push.sh alert "título" "mensagem"`
- App: Pager (Expo/React Native, package `cc.jsplayground.pager`)

### Terminal Chat

- Interactive conversation with me from terminal: `openclaw tui`

---

Add whatever helps you do your job. This is your cheat sheet.
