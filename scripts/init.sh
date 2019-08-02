# This script is intended to run on creation of the container to run varias tasks, such as;
#   Create a .pgpass file with Postgres Secrets for easier access to data

if [ ! -z "$PG_HOST" ]
then
    echo "${PG_HOST}:${PG_PORT}:${PG_DB_NAME}:${PG_USER}:${PG_PASS}" >> v.pgpass
    chmod 0600 /root/.pgpass
    echo "Created .pgpass file"
fi

tail -f /dev/null
