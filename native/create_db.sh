#! /usr/bin/env sh

sqlite3 database "CREATE TABLE IF NOT EXISTS 'stories' (url UNIQUE, title, timestamp);"
sqlite3 database "CREATE TABLE IF NOT EXISTS 'clicked' (id UNIQUE);"
