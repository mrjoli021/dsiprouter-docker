#!/bin/bash
set -e

#DB_USER="pguser"

function createDB() {
    createdb -U $DB_USER -E UTF8 -T template0 --locale=en_US.utf8 $1
}

function restoreSingleDB() {
    psql -U $DB_USER $1 < /dump/$1.sql
}

function restoreAllDB() {
    psql -U $DB_USER -f /dump/AllDB.sql postgres
}

function runOnce() {
    local RUNONCE_FILE="/var/librunOnce"

    if [ -f $RUNONCE_FILE ]
    then
        echo -e "Detected RunOnce"
    else
        restoreAllDB

        #Create RunOnce stop-file
        touch $RUNONCE_FILE
    fi
}

runOnce
