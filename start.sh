#! /bin/bash

#Feel free to change this
PORT=6000

# Start up the master on port 6000
# The & means to run it in the background
python3 master.py $PORT &

# Sleep for 2 seconds for the master to start up
sleep 2

# Start two workers, telling them to talk to the master on port 6000
python3 worker.py $PORT ($PORT + 1) &
sleep 1
python3 worker.py $PORT ($PORT + 2) &
sleep 1


