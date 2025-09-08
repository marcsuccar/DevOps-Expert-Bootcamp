# Week 01 – Linux & Shell Fundamentals


**Goals**
- Navigate Linux, manage users/permissions, understand processes & services.
- Be productive in the shell; write simple automation scripts.

**Checklist**
- [ ] Install Ubuntu (VM/WSL) or use a cloud VM
- [ ] Create users/groups; set file permissions
- [ ] Learn `systemctl`, `journalctl`

**Lab**
- Write `scripts/bootstrap_web.sh` that:
  - Creates a user
  - Installs Nginx
  - Serves a custom index.html

Run:
```bash
bash scripts/bootstrap_web.sh
curl -I http://localhost
```
