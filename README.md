# gcloudshell
Shell scripts on gcloud cloud shell machine.

```bash
ssh -t -p 6000 -i .ssh/google_compute_engine -o StrictHostKeyChecking=no <USERNAME>@<IP> -- /usr/bin/zsh
```
or see `ssh_connect_cmd.sh` to generate connect sting when logged into GCloud Shell.
