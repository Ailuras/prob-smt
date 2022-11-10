# cd ../build
# make -j20
# cd ../test
for file in benchmarks/*;do
    echo --------------------------------------------------
    start=$[$(date +%s%N)/1000000]
    ../build/z3 $file
    end=$[$(date +%s%N)/1000000]
    take=$(( end - start ))
    echo $file : ${take} ms.
done
# ../build/z3 $1 