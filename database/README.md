## Instructions
- Pyway initialized in .pyway.conf

- To setup the dockerized postgres db, use the docker-compose.yml:
    - To build n run: `docker-compose up -d`
    - To stop: `docker-compose down`

This will start a postgres db in localhost:5432 with the following details:

    POSTGRES_USER: user
    POSTGRES_PASSWORD: password
    POSTGRES_DB: mydatabase

The same details are configured in .pyway.conf as well.

- To check the current state of the db (regarding the pyway versioning), run:
`pyway info`
- To make migrations (if any new files added in migrations folder) run:
`pyway migrate`


