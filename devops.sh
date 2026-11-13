# list all running processes, filtered by port 3000
# can see what command started the process
ps aux | grep -E "3000"

# get PID (process ID) of what is running on port 3000
lsof -t -i:3000

# (sudo) get PID (process ID) of what is running on port 3000
sudo lsof -t -i:3000

# get the cwd (Current Working Directory) of the command of PID
ls -l /proc/[pid-number]/cwd

# kill (SIGTERM) whatever is running at port 3000 by PID
kill $(lsof -t -i:3000)

# kill (SIGKILL) whatever is running at port 3000 by PID
kill -9 $(lsof -t -i:3000)

# (sudo) kill (SIGKILL) whatever is running at port 3000 by PID
sudo kill -9 $(sudo lsof -t -i:3000)

# grep search files recursively
find . -type f | grep pattern

# grep (rg) search files recursively
find . -type f | rg pattern

# fd search files recursively (case insensitive)
fd pattern

# grep search directories recursively
find . -type d | grep pattern

# grep (rg) search directories recursively
find . -type d | rg pattern

# search for a filename in current directory, case insensitive, partial match
ls | rg -i "foo"

# grep search for text in current directory [r]ecursively, with line [n]umber, [i]gnore case
grep -rni pattern

# grep search for text in current directory, ignores git ignore, [r]ecursively, with line [n]umber, [i]gnore case
git grep -rni pattern

# grep search (rg) for text in current directory [i]gnore case
rg -i pattern

# see the output of a command while piping
command1 | tee /dev/tty | command2

# ssh [A]gent Forwarding
ssh -A user@ip-address
