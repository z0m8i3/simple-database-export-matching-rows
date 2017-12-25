#!/bin/bash
SHELL=/bin/sh
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin

#database config
DB_USER="your_db_username"
DB_PW="your_password"
DB_CNF="your_database"
#config variables for what you want to export
TABLE_EXPORT="the_database_table"
TABLE_ROW_TARGET="the_database_row"
KEY_TARGET="the_key_you_want_to_target"
PRIMARY_LOCATION="/your/path/"
OUTPUT_FILENAME="your_output_filename.sql"
#do not edit below this line

echo "  Generating an export of "$TABLE_EXPORT" ..."
mysqldump --skip-add-drop-table --compact --no-create-info -u"$DB_USER" -p"$DB_PW" "$DB_CNF" "$TABLE_EXPORT" --where=""$TABLE_ROW_TARGET" = '"$KEY_TARGET"'" > "$PRIMARY_LOCATION""$OUTPUT_FILENAME"

echo "  DONE!  Find your export at "$PRIMARY_LOCATION""$OUTPUT_FILENAME""
