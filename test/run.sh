cd ../build
make -j20
cd ../test
../build/z3 $1 -tr:hr -tr:nlsat -tr:nlsat_smt2 -tr:nlsat_fd -tr:mpq_set
# ../build/z3 $1 