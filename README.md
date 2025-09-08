# DevOps Expert Bootcamp (20 Weeks)

A complete, hands-on curriculum to become an expert in DevOps. Follow **one folder per week** under `weeks/`.
Each week includes topics, learning goals, tasks, and a lab that rolls into the **capstone** (weeks 18–20).

> Start here: clone this repo and work week-by-week. Use Issues, PRs and Git tags as if this were a real project.

## Structure

- `weeks/` — 20 week-by-week guides with tasks & labs
- `.github/workflows/` — CI examples (GitHub Actions)
- `docker/` — Dockerfile and Compose baseline
- `k8s/` — Kubernetes manifests (base)
- `helm/` — Helm chart skeleton
- `terraform/` — Terraform (AWS example) with modules
- `ansible/` — Configuration management examples
- `monitoring/` — Prometheus & Grafana
- `logging/` — EFK stack
- `security/` — Trivy, OPA Gatekeeper examples
- `service-mesh/` — Istio canary example
- `capstone/` — Microservices app scaffold (frontend + services)

## Getting Started

```bash
# create a new repo from this folder
git init
git add .
git commit -m "Bootcamp scaffold"
git branch -M main
# create empty GitHub repo first, then:
git remote add origin <YOUR_GITHUB_REPO_URL>
git push -u origin main
```

### Tooling You’ll Use

- GitHub Actions / Jenkins (CI/CD)
- Docker, Docker Compose
- Kubernetes, Helm, ArgoCD
- Terraform, Ansible
- Prometheus, Grafana, EFK (Elasticsearch/Fluentd/Kibana), Jaeger
- Vault, Trivy, OPA/Gatekeeper
- Istio (canary)

---

© 2025-09-04 Bootcamp scaffold. MIT License.
