# cd ../build;make -j20;cd ../test
# ../build/z3 $1 -tr:hr -tr:nlsat -tr:nlsat_assign -tr:mpq_set -tr:nlsat_model

for file in QF_NIA/*;do
    echo --------------------------------------------------
    start=$[$(date +%s%N)/1000000]
    ../build/z3 $file
    end=$[$(date +%s%N)/1000000]
    take=$(( end - start ))
    echo $file : ${take} ms.
done