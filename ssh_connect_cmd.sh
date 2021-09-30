
echo "ssh -p 6000 -o StrictHostKeyChecking=no -i ~/.ssh/google_compute_engine rollwagen@`curl -s 'https://api.ipify.org?format=text'`"
