#!/usr/bin/env python3
import shutil, sys, os

THRESHOLD = int(os.getenv("THRESHOLD", "80"))
total, used, free = shutil.disk_usage("/")
percent = round(used / total * 100, 2)

if percent > THRESHOLD:
    print(f"[ALERT] Disk usage {percent}% exceeds {THRESHOLD}%")
    # TODO: send email/Slack webhook
    sys.exit(1)
else:
    print(f"[OK] Disk usage {percent}% under threshold {THRESHOLD}%")
