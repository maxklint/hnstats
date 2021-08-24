#! /usr/bin/env sh

echo "Clicked on" $(sqlite3 database "select count(*) from clicked;") \
     "out of" $(sqlite3 database "select count(*) from stories;") "stories" \
     "since" $(sqlite3 database "select min(date(timestamp)) from stories;")
