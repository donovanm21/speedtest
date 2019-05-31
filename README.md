# Simple Speedtest Shell. Used with Debian base servers.

This simple script will clone the speedtest-cli git repo and run a test to a nominated server.

# Make shell script executable and run it

chmod +x speedtest.sh && ./speedtest.sh

# List all available servers

cd /home/speedtest-cli && ./speedtest.py --list to see all available servers.

# Show Cape Town based server only

cd /home/speedtest-cli && ./speedtest.py --list | grep -E "Cape Town"

Update the ID after the --server option in the speedtest.sh file with the server ID you wish to use.
