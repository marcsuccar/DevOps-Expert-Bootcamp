# Architecture

- API Gateway/Ingress routes requests to microservices.
- Stateful data in Postgres (or MongoDB).
- Services packaged as containers; deployed via Helm to K8s.
- Observability: Prometheus + Grafana; logs via EFK.
- Secrets in Vault / K8s Secrets (sealed).
