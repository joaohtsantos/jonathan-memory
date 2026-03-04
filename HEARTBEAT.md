# HEARTBEAT.md

## On every heartbeat:
1. Create/update `memory/YYYY-MM-DD.md` with anything significant from the current session (decisions, events, context worth remembering)
2. If there are **no new messages in the past hour**, also:
   - Review recent `memory/YYYY-MM-DD.md` files
   - Update `MEMORY.md` with anything worth keeping long-term
   - Clean up outdated info
3. Log what you did in `audit/YYYY-MM-DD.log`
4. **Skip all of this if nothing new happened since last heartbeat**
5. If between 08:00-20:00 BRT: send a push via `send-push.sh alert "💓 Heartbeat" "<brief status>"`
6. Reply HEARTBEAT_OK (do NOT send WhatsApp messages)
