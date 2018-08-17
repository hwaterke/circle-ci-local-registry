#!/usr/bin/env bash
set -ex

/usr/bin/expect <<EOD
spawn npm adduser --registry http://localhost:4873
expect {
  "Username:" {send "local\r"; exp_continue}
  "Password:" {send "local\r"; exp_continue}
  "Email: (this IS public)" {send "local@example.com\r"; exp_continue}
}
EOD
