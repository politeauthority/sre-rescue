if [ ! -z "$PG_HOST" ]
then
    echo "${PG_HOST}:${PG_PORT}:${PG_DB_NAME}:${PG_USER}:${PG_PASS}" >> ~/.pgpass
    chmod 0600 ~/.pgpass
    echo "Created .pgpass file"
fi
tail -f /dev/null



