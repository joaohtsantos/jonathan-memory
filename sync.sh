#!/bin/bash
# Jonathan Memory Backup - Daily Sync Script
# Syncs workspace files to the jonathan-memory git repo and pushes

set -e

BACKUP_DIR="/home/joaohts/jonathan-memory-backup"
WORKSPACE="/home/joaohts/.openclaw/workspace"

cd "$BACKUP_DIR"

# Files to sync
FILES="SOUL.md MEMORY.md USER.md IDENTITY.md AGENTS.md TOOLS.md HEARTBEAT.md CHANGELOG.md contacts.md"

for f in $FILES; do
    [ -f "$WORKSPACE/$f" ] && cp "$WORKSPACE/$f" "$BACKUP_DIR/"
done

# Sync directories
rsync -a --delete "$WORKSPACE/memory/" "$BACKUP_DIR/memory/" 2>/dev/null || cp -r "$WORKSPACE/memory/"* "$BACKUP_DIR/memory/" 2>/dev/null
rsync -a --delete "$WORKSPACE/audit/" "$BACKUP_DIR/audit/" 2>/dev/null || cp -r "$WORKSPACE/audit/"* "$BACKUP_DIR/audit/" 2>/dev/null

# Commit and push
git add -A
if git diff --cached --quiet; then
    echo "$(date): No changes to commit"
else
    git commit -m "Daily backup - $(date +%Y-%m-%d)"
    GIT_SSH_COMMAND="ssh -i ~/.ssh/id_jonathan -o StrictHostKeyChecking=accept-new" git push origin main
    echo "$(date): Backup pushed successfully"
fi
