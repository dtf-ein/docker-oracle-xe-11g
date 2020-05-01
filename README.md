# Purpose
Creates a Docker Oracle Database 11g Express Edition service that:
1. persists its data in a volume; and
2. initializes with any `.sql` files in the `./docker-entrypoint-initdb.d` directory.

# Run
Make sure you've got [docker](https://docs.docker.com/get-docker/) and [docker-compose](https://docs.docker.com/compose/install/) installed and then run:

```bash
docker-compose up -d
```

The database will be available on `http://localhost:1521`.
