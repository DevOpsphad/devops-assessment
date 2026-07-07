# DevOps Assessment

## Project Overview

This project provisions AWS infrastructure using Terraform and demonstrates a complete DevOps workflow including Infrastructure as Code, Dockerized PostgreSQL, SQL migrations, seed data, backup and restore scripts, and CI using GitHub Actions.

---

## Architectures

Internet
↓
Application Load Balancer
↓
ECS Fargate
↓
PostgreSQL RDS

---

## Project Structure

```
devops-assessment
│
├── .github/
│   └── workflows/
│       └── terraform.yml
│
├── database/
│   ├── migrations/
│   └── seeds/
│
├── infra/
│   ├── envs/
│   │   ├── dev/
│   │   └── prod/
│   │
│   └── modules/
│       ├── network/
│       ├── ecs/
│       └── rds/
│
├── scripts/
│   ├── backup.sh
│   └── restore.sh
│
├── docker-compose.yml
└── README.md
```

---

## Terraform

```bash
cd infra/envs/dev

terraform init

terraform fmt

terraform validate

terraform plan
```

---

## Start PostgreSQL

```bash
docker compose up -d
```

---

## Database Migration

Tables are created using:

```
database/migrations/001_create_tables.sql
```

---

## Seed Data

Seed data is loaded using:

```
database/seeds/seed.sql
```

The project contains:

- 100 hotel bookings
- 50 booking events

---

## Backup

Linux:

```bash
./scripts/backup.sh
```

Windows PowerShell:

```powershell
docker exec hotel-postgres pg_dump -U postgres -d hoteldb > backup.sql
```

---

## Restore

Linux:

```bash
./scripts/restore.sh backup.sql
```

Windows PowerShell:

```powershell
Get-Content .\backup.sql | docker exec -i hotel-postgres psql -U postgres -d hoteldb
```

---

## Technologies

- Terraform
- AWS
- Docker
- PostgreSQL
- GitHub Actions

---

## Future Improvements

- ECS Auto Scaling
- HTTPS using ACM
- Secrets Manager integration
- CloudWatch monitoring
- Remote Terraform backend