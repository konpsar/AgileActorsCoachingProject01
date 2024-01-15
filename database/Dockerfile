# Use the official PostgreSQL image as the base
FROM postgres

# Set environment variables for default database credentials
ENV POSTGRES_USER=user
ENV POSTGRES_PASSWORD=password
ENV POSTGRES_DB=mydatabase

# Expose the default PostgreSQL port
EXPOSE 5432

# Copy your SQL schema files into the container
# COPY <dbfile.sql> /docker-entrypoint-initdb.d/10-schema_users.sql
