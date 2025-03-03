#!/usr/bin/env sh

echo 'The following command terminates the "npm start" process using its PID'
echo '(written to ".pidfile"), all of which were conducted when "deliver.sh"'
echo 'was executed.'
npm start & echo $! > .pidfile
sleep 10
set -x
kill $(cat .pidfile)
rm .pidfile
