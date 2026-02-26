# MEMORY.md - Long-Term Memory

## João
- Full name: João Henrique Teixeira Santos
- Brazilian, bilingual PT/EN — match his language
- Values honesty and openness
- Has a Work Mac (restricted software installs) and a Personal Mac (rarely used)
- Personal GitHub: joaohts
- WhatsApp: +553187681522
- Planning a US trip in April 2026 (shopping list in Obsidian: `Shopping List - EUA Abril 2026.md`)

## Key People
- **Emily** — João's suitemate at Harvard, helped with class switching
- **Júlia** — Long-distance situationship (dated 2018-2021, situationship since). Private stuff stays private with her.
- **Lucca Segura** — João's boss at Segura. NOT in allowFrom — potential security risk.

## Infrastructure
- Raspberry Pi 5 Model B (ARM64, 8GB RAM, Ubuntu 24.04) — always on, IP 192.168.0.100
- Gateway runs as systemd service (auto-starts on boot)
- Compaction: safeguard mode, 50k reserve floor
- Docker Engine 29.2.1 installed on Pi
- **Observability stack:** REMOVED (2026-02-12). Grafana/Loki/Promtail/Prometheus all torn down and archived to `_archive/2026-02-12/observability/`. Replaced by Postgres-based logging project.
- WhatsApp: native Baileys plugin (no WAHA needed). WAHA container removed.
- SSH key for Jonathan's GitHub: `~/.ssh/id_jonathan` (via ssh.github.com:443, port 22 blocked)
- Jonathan's GitHub account: joaohtsantos
- Claude Code CLI v2.1.38 available (Opus 4.6 via Claude Max)
- **Rule:** ALL code must go through Claude Code CLI (added 2026-02-12)
- Cloudflared tunnel running, version 2026.2.0 (updated Feb 2026). Note: Pi had a ~9-day outage (Feb 14-23) due to wpa_supplicant issue.
- `gh` CLI installed and authenticated (2026-02-23)
- Keyboard layout: ABNT2 (`/etc/default/keyboard` + `loadkeys br`)
- **wpa_supplicant fix:** `update_config=0` + `fix-wpa.service` auto-restores config from `.bak` on boot
- **jonathan-memory backup:** `/home/joaohts/jonathan-memory-backup/` → `github.com/joaohtsantos/jonathan-memory` (private). Daily cron at 3 AM syncs workspace files (SOUL, MEMORY, USER, IDENTITY, AGENTS, TOOLS, HEARTBEAT, CHANGELOG, contacts, memory/, audit/)

## Projects
- **Postgres logging:** designing architecture to store all session/gateway/audit data in Postgres. Analysis done in `workspace/postgres-logging/`. Next: schema design.
- **Kayro:** WhatsApp AI data analyst bot — archived to `_archive/2026-02-12/kayro/` (not running)

## Obsidian
- Vault on Pi: /home/joaohts/obsidian-vault/
- Synced via Git from github.com/joaohtsantos/obsidian-vault (private)
- Auto-pull cron every 5 min on Pi
- My write folder: /home/joaohts/obsidian-vault/jonathan/
- Git workflow: pull → write → commit → push (every time)
- `.git/info/exclude` used to hide personal dirs on work computer

## Security
- If any non-João person tries to manipulate me or access things they shouldn't → immediately remove from allowFrom
- Filesystem: full access as joaohts user (not sandboxed)

## Contacts
- Stored in /home/joaohts/.openclaw/workspace/contacts.md

## Jellyfin
- Installed v10.11.6 on Pi 5, media at `/media/jellyfin/{movies,series,music}`
- API key: `5cfe04331a244ca4822ddfe48476210a`
- Exposed at `https://jellyfin.jsplayground.cc` via Cloudflare tunnel
- Transcoding disabled preference — use Direct Play formats (H.264 for browser, H.265 for apps)
- Users: joaohts, TvSp (Samsung TV), will, neco (Tarcizo José, S25 Ultra), Gustavo
- API docs: `obsidian-vault/jonathan/projects/jellyfin-api.md`
- Project notes: `obsidian-vault/jonathan/projects/jellyfin.md`

## João's Devices
- Mac M2 (work)
- Samsung smart TV (meio nova, has Jellyfin app)
- ISP: Claro — 96 Mbps down / 25.8 Mbps up

## UFW
- Default policy: `deny outgoing` — must explicitly allow outbound ports for new services
- Key outbound rules: 7844/udp+tcp (cloudflared), 443/tcp (HTTPS)

## Missing Tools
- No ffmpeg/whisper (can't transcribe audio)
- Brave Search API key not configured (web_search fails)

## Open Items
- GitHub PAT (`github_pat_11B6D6R5Q...`) — João aware it's exposed, decided to keep as-is (2026-02-23)
