#!/bin/bash -e
if [ -z "$NETWORK" ]; then 
    net=10.0.0.1/16
else
    net=$NETWORK
fi

append_params=""

if [ -n "$JOBS" ]; then
    append_params="$append_params --jobs $JOBS"
fi

/usr/bin/distccd --allow=$net --daemon --log-level info --no-detach --log-stderr $append_params 
