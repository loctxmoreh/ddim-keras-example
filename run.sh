#!/usr/bin/env bash

if [[ $HOSTNAME =~ ^haca100[0-9] ]]; then
    # on A100 VM, somehow tensorflow cannot find the right cuda & cudnn lib to load
    # at runtime, so set some env vars to correct it
    export PATH=/usr/local/cuda-11.2/bin${PATH:+:${PATH}}
    export LD_LIBRARY_PATH=/usr/local/cuda-11.2/lib64:$LD_LIBRARY_PATH
    export LD_LIBRARY_PATH=/usr/local/cuda-11.2/include:$LD_LIBRARY_PATH
    export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda-11.2/extras/CUPTI/lib64
fi

/usr/bin/env python3 ddim.py
