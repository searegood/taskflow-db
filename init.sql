-- TaskFlow schema. Applied automatically by docker-compose against a fresh
-- Postgres container (docker-entrypoint-initdb.d convention), and used by
-- the taskflow-db Component's CI workflow to sanity-check it's valid SQL.

CREATE TABLE IF NOT EXISTS tasks (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    done BOOLEAN NOT NULL DEFAULT FALSE,
    created_at TIMESTAMP NOT NULL DEFAULT NOW()
);
