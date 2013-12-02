#!/bin/bash 
HOST=203.00.00.00
PORT=22
USER=user
FILE=/etc/www/app/send_uat/*.txt
KEY_FILE=/etc/_keys/key1.ssh 

/usr/bin/expect<<EOD
spawn sftp -o IdentityFile=$KEY_FILE -oPort=$PORT $USER@$HOST
expect "sftp>"
send "cd inbound/\r"
expect "sftp>"
send "put $FILE\r"
expect "sftp>"
send "exit\r"
EOD