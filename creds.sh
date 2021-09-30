#!/bin/bash
# shellcheck source=/dev/null
gpg --decrypt ~/aws_credentials.sh.gpg > ~/_awscreds.sh; . ~/_awscreds.sh; rm ~/_awscreds.sh;  echo RELOADAGENT | gpg-connect-agent
