gpg --decrypt ~/aws_credentials.sh.gpg > ~/_awscreds.sh; source ~/_awscreds.sh; rm ~/_awscreds.sh;  echo RELOADAGENT | gpg-connect-agent
