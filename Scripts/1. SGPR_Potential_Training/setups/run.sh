python -m theforce.calculator.calc_server &
sleep 1.
mpirun -np 16 python -m theforce.cl.md -i POSCAR


