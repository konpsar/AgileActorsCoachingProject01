
# Using `.env` Files with Docker

How to use `.env` files to configure Docker containers and check their configuration.


## Step 1: Prepare Your `.env` File

Create a `.env` file to store your environment variables. For example, for a PostgreSQL container, you have:

```env
# .env.db
POSTGRES_USER=myuser
POSTGRES_PASSWORD=mypassword
POSTGRES_DB=mydatabase
```

**Note:** Include this file to `.gitignore` file, in order to exclude it from being tracked from version control.

## Step 2: Create Your Dockerfile

Prepare a Dockerfile if you are customizing the PostgreSQL image. 
Basic example:

```Dockerfile
# Use the PostgreSQL image as the base
FROM postgres

# Expose the default PostgreSQL port
EXPOSE 5432
```

## Step 3: Running Your Docker Container

Start your Docker container, using the `--env-file` flag to pass the `.env` file:

```bash
docker run --env-file .env.db -p 5432:5432 -d postgres
```

Or just the following if you don't want to expose PostgreSQL to your host:

```bash
docker run --env-file .env.db -d postgres
```

## (Optional) Step 4:  Verifying Configuration

### Connect to Your Container


```bash
# List running containers and find your container’s name or ID:
docker ps
# Start a bash shell inside your container:
docker exec -it <container_id OR name> bash
```

### Test PostgreSQL Configuration


```bash
# In the container, connect to PostgreSQL using the credentials from the `.env` file. 
psql -U $POSTGRES_USER $POSTGRES_DB
# Now you're connected. You can use SQL commands to check the setup. 
# e.g. to list databases:
\l
# to check connection info:
\conninfo
# Exit `psql`:
\q
# Exit the container's shell:
exit
```

## Additional Notes
    You can also use external tools s.a. DBeaver to connect to the PostgreSQL database using the exposed port and credentials to check the configuration.
