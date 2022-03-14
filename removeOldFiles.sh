#!/bin/bash
ls -lrt | awk 'NR>1 {print $NF}' > filenames
count=`wc -l <filenames`
count=`expr $count -1`
head -$count-20 | xargs rm -rf
