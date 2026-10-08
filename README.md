
# AWS NYC 311 Data Platform

End-to-end batch data engineering project using AWS
and NYC Open Data.

## Overview

This project aims to build a cloud-native data pipeline
for ingesting, processing, and analyzing NYC 311
service requests.

Data source:
https://data.cityofnewyork.us/d/erm2-nwe9

## Architecture (Planned)

NYC Open Data API
    |
    v
AWS Lambda (Python)
    |
    v
Amazon S3 - Bronze (JSON)
    |
    v
AWS Glue (PySpark)
    |
    v
Amazon S3 - Silver (Parquet)
    |
    v
Amazon Athena + Glue Data Catalog
    |
    v
Amazon S3 - Gold (Analytics)

Orchestration: AWS Step Functions + EventBridge

Monitoring: Amazon CloudWatch

Infrastructure: Terraform

## Technology Stack

- Python 3.12
- httpx
- SQL
- PySpark (planned)
- AWS
- Terraform
- Nix Flakes + devenv
- uv, pytest, Ruff

## Development Environment

On NixOS or another supported Nix environment:

```bash
nix develop --no-pure-eval
uv sync
uv run pytest -v
ruff check .
```

## Project Status

In development.

Completed:
- Reproducible local development environment
- Python project configuration
- Initial smoke test

Next:
- NYC Open Data API client
- Batch ingestion and data validation
- AWS infrastructure

## Cost Management

This project is designed for small, controlled
AWS workloads. Deployments may incur AWS charges.

## License

To be determined.
