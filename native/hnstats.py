#! /usr/local/bin/python3

import sys
import json
import struct
import datetime
import sqlite3


def getMessage():
    rawLength = sys.stdin.buffer.read(4)
    if len(rawLength) == 0:
        sys.exit(0)
    messageLength = struct.unpack('@I', rawLength)[0]
    message = sys.stdin.buffer.read(messageLength).decode('utf-8')
    return json.loads(message)


def encodeMessage(messageContent):
    encodedContent = json.dumps(messageContent).encode('utf-8')
    encodedLength = struct.pack('@I', len(encodedContent))
    return {'length': encodedLength, 'content': encodedContent}


def sendMessage(encodedMessage):
    sys.stdout.buffer.write(encodedMessage['length'])
    sys.stdout.buffer.write(encodedMessage['content'])
    sys.stdout.buffer.flush()


con = sqlite3.connect('database')
while True:
    msg = getMessage()
    clicked = msg["clicked"]

    # TODO: insert all stories into one table, then store ids of clicked stories in another table

    cur = con.cursor()
    cur.execute("INSERT INTO 'hnstats' VALUES (?,?,?,?);",
                (clicked["url"], clicked["title"], True, datetime.datetime.now()))
    con.commit()
