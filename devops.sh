# list all running processes, filtered by port 3000
# can see what command started the process
ps aux | grep -E "3000"

# get PID (process ID) of what is running on port 3000
sudo lsof -t -i:3000

# get the cwd (Current Working Directory) of the command of PID
ls -l /proc/[pid-number]/cwd

# kill whatever is running at port 3000 by PID
sudo kill -9 $(sudo lsof -t -i:3000)
