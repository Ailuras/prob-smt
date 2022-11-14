# cd ../build;make -j20;cd ../test
# ../build/z3 $1 -memory:30720 -tr:hr -tr:nlsat -tr:nlsat_assign -tr:mpq_set -tr:nlsat_model
# ../build/z3 $1 

for file in QF_NIA/*;do
    echo --------------------------------------------------
    start=$[$(date +%s%N)/1000000]
    ../build/z3 $file -memory:30720
    # ../build/z3 $file
    end=$[$(date +%s%N)/1000000]
    take=$(( end - start ))
    echo $file : ${take} ms.
done