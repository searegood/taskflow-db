# taskflow-db

Holds TaskFlow's Postgres schema. In this workshop the backend's SQLAlchemy
models also happen to create this same table on startup (`db.create_all()`),
so in practice you won't see this component "do" much at runtime — its
purpose here is purely to demonstrate that a data-tier Component is still a
first-class Component in CloudBees Unify, with its own CI workflow and its
own place in the Application's release train.

For a real project, replace `init.sql` with a proper migration tool
(Alembic, Flyway, sqlx-migrate, etc.) and have the CI workflow run
migrations against a throwaway database as a validation step.
