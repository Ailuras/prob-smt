#!/bin/bash
file=$1

rm -rf res/$file.log

for i in {1..1000}
do
    ../build/z3 smt/$file >> res/$file.log
    # ../build/z3 $file -tr:hr -tr:nlsat -tr:nlsat_assign -tr:mpq_set -tr:nlsat_model >> $file.log
    # cat .z3-trace >> "{$file}.log"
    sleep 1
done
