#! /usr/bin/env sh

sqlite3 database "CREATE TABLE IF NOT EXISTS 'hnstats' (url UNIQUE, title, clicked, timestamp);"
