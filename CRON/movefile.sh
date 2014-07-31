#!/bin/sh
ECHO "The test file was moved on: $(date)" >> ~/Desktop/cron/filemoved.log
mv ~/Desktop/cron/testfile.txt ~/Desktop/cron/test/testfile.txt
