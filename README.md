# Redash Setup

see makefile and use .env file to use this repo

When connecting to the host, you can use host.docker.internal for the host in the Data Source page.

## SQlite

(1) Assign shared db file to scheduler

```yaml
scheduler:
  ...
  volumes:
    - /path/to/local/dev.db:/app/redash/dev.db
```

(2) Add data Source SQLite:/app/redash/dev.db
