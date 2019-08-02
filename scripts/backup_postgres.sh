### Backs up a Postgres Database to B2

set -eo pipefail
echo "Creating backup"
cat  ~/.pgpass
pg_dump -w -h ${PG_HOST} -U ${PG_USER} ${PG_DB_NAME} > /tmp/db.sql
cd /tmp
echo "Zipping backup"
zip /tmp/db.zip db.sql
b2 authorize-account ${B2_APPLICATION_KEY} ${B2_APPLICATION_KEY_ID}
now=$(date +"%Y_%m_%d_%T")
echo "Uploading backup"
b2 upload_file ${B2_BUCKET_NAME} /tmp/db.zip ${B2_BACKUP_PATH}${PG_DB_NAME}_${now}.zip
b2 upload_file ${B2_BUCKET_NAME} /tmp/db.zip ${B2_BACKUP_PATH}${PG_DB_NAME}_latest.zip
echo "Backup complete, created ${B2_BACKUP_PATH}${PG_DB_NAME}_${now}.zip"

rm /tmp/db.sql
rm /tmp/db.zip
