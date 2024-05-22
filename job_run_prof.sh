#!/bin/bash

#PJM -L rscunit=fx
#PJM -L rscgrp=fx-small
#PJM -L node=1
#PJM -L elapse=00:10:00
#PJM -j

export FLIB_FASTOMP=TRUE
export FLIB_HPCFUNC=TRUE
export XOS_MMM_L_PAGING_POLICY=demand:demand:demand

mkdir -p prof
mkdir -p prof_csv

for VAL in {1..17}
do
	fapp -C -d ./prof/rep${VAL} -Hevent=pa${VAL} ./fmemop
	fapppx -A -d ./prof/rep${VAL} -Icpupa -tcsv -o ./prof_csv/pa${VAL}.csv
done
