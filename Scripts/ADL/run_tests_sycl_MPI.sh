#!/bin/sh
export SYCL_DEVICE_FILTER=level_zero
python3 ./FAH_GMX_MPI.py -i Projects/ -o Projects/ -l gmx_sycl_mpi_b16_s8 -ntomp 16 -nsteps 10000 -npme 1 -ntomp_pme 8 -gmx "gmx_mpi" -envar "mpirun -genv I_MPI_DEBUG=4 -n 2 -env I_MPI_PIN_DOMAIN [00FFFF,FF0000]"
sleep 6
python3 ./FAH_GMX_MPI.py -i Projects/ -o Projects/ -l gmx_sycl_mpi_b12_s8 -ntomp 12 -nsteps 10000 -npme 1 -ntomp_pme 8 -gmx "gmx_mpi" -envar "mpirun -genv I_MPI_DEBUG=4 -n 2 -env I_MPI_PIN_DOMAIN [00FFFF,FF0000]"
sleep 6
python3 ./FAH_GMX_MPI.py -i Projects/ -o Projects/ -l gmx_sycl_mpi_b8_s8 -ntomp 8 -nsteps 10000 -npme 1 -ntomp_pme 8 -gmx "gmx_mpi" -envar "mpirun -genv I_MPI_DEBUG=4 -n 2 -env I_MPI_PIN_DOMAIN [00FFFF,FF0000]"
sleep 6
python3 ./FAH_GMX_MPI.py -i Projects/ -o Projects/ -l gmx_sycl_mpi_b4_s8 -ntomp 4 -nsteps 10000 -npme 1 -ntomp_pme 8 -gmx "gmx_mpi" -envar "mpirun -genv I_MPI_DEBUG=4 -n 2 -env I_MPI_PIN_DOMAIN [00FFFF,FF0000]"
sleep 6
python3 ./FAH_GMX_MPI.py -i Projects/ -o Projects/ -l gmx_sycl_mpi_b16 -ntomp 16 -nsteps 10000 -gmx "gmx_mpi" -envar "mpirun -genv I_MPI_DEBUG=4 -n 1 -env I_MPI_PIN_DOMAIN [00FFFF]"
sleep 6
python3 ./FAH_GMX_MPI.py -i Projects/ -o Projects/ -l gmx_sycl_mpi_b12 -ntomp 12 -nsteps 10000 -gmx "gmx_mpi" -envar "mpirun -genv I_MPI_DEBUG=4 -n 1 -env I_MPI_PIN_DOMAIN [00FFFF]"
sleep 6
python3 ./FAH_GMX_MPI.py -i Projects/ -o Projects/ -l gmx_sycl_mpi_b8 -ntomp 8 -nsteps 10000 -gmx "gmx_mpi" -envar "mpirun -genv I_MPI_DEBUG=4 -n 1 -env I_MPI_PIN_DOMAIN [00FFFF]"
sleep 6
python3 ./FAH_GMX_MPI.py -i Projects/ -o Projects/ -l gmx_sycl_mpi_s8 -ntomp 8 -nsteps 10000 -gmx "gmx_mpi" -envar "mpirun -genv I_MPI_DEBUG=4 -n 1 -env I_MPI_PIN_DOMAIN [FF0000]"
sleep 6
python3 ./FAH_GMX_MPI.py -i Projects/ -o Projects/ -l gmx_sycl_mpi_s4 -ntomp 4 -nsteps 10000 -gmx "gmx_mpi" -envar "mpirun -genv I_MPI_DEBUG=4 -n 1 -env I_MPI_PIN_DOMAIN [FF0000]"
sleep 6
unset SYCL_DEVICE_FILTER

# export SYCL_DEVICE_FILTER=level_zero
# python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_full -nt 20 -nsteps 10000 -gmx /usr/local/gromacs_sycl/bin/gmx
# sleep 60
# python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_medium -nt 12 -nsteps 10000 -gmx /usr/local/gromacs_sycl/bin/gmx
# sleep 60
# python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_low -nt 8 -nsteps 10000 -gmx /usr/local/gromacs_sycl/bin/gmx
# sleep 60
# unset SYCL_DEVICE_FILTER

# sudo cpupower frequency-set --governor performance
# export SYCL_DEVICE_FILTER=level_zero
# python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_full_perf -nt 8 -nsteps 10000 -gmx /usr/local/gromacs_sycl/bin/gmx
# sleep 60
# python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_medium_perf -nt 4 -nsteps 10000 -gmx /usr/local/gromacs_sycl/bin/gmx
# sleep 60
# python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_low_perf -nt 2 -nsteps 10000 -gmx /usr/local/gromacs_sycl/bin/gmx
# sleep 60
# unset SYCL_DEVICE_FILTER
# sudo cpupower frequency-set --governor powersave


# sudo intel_gpu_frequency -m
# export SYCL_DEVICE_FILTER=level_zero
# python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_full_freq -nt 8 -nsteps 10000 -gmx /usr/local/gromacs_sycl/bin/gmx
# sleep 60
# python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_medium_freq -nt 4 -nsteps 10000 -gmx /usr/local/gromacs_sycl/bin/gmx
# sleep 60
# python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_low_freq -nt 2 -nsteps 10000 -gmx /usr/local/gromacs_sycl/bin/gmx
# sleep 60
# unset SYCL_DEVICE_FILTER
# sudo intel_gpu_frequency -d

# export KMP_AFFINITY="explicit,proclist=[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19],verbose" #all logical cores big=12 and small=8 (6+8+2)
# export KMP_AFFINITY="explicit,proclist=[0,2,4,6,8,10,12,13,14,15,16,17,18,19],verbose" #all physical cores big=6 and small=8 (6+8+1)
# export KMP_AFFINITY="explicit,proclist=[0,1,2,3,4,5,6,7,8,9,10,11],verbose" #all logical cores big=12 (6+0+2)
# export KMP_AFFINITY="explicit,proclist=[0,2,4,6,8,10],verbose" #all physical cores big=6 (6+0+1)
# export KMP_AFFINITY="explicit,proclist=[12,13,14,15,16,17,18,19],verbose" #all physical cores small=8 (0+8+1)

# export KMP_AFFINITY="explicit,proclist=[0,1,2,3,4,5,6,7,12,13,14,15,16,17,18,19],verbose" #logical cores big=8 and small=8 (4+8+2)
# export KMP_AFFINITY="explicit,proclist=[0,2,4,6,12,13,14,15,16,17,18,19],verbose" #physical cores big=4 and small=8 (4+8+1)
# export KMP_AFFINITY="explicit,proclist=[0,1,2,3,4,5,6,7],verbose" #logical cores big=8 (4+0+2)
# export KMP_AFFINITY="explicit,proclist=[0,2,4,6],verbose" #physical cores big=4 (4+0+1)
# export KMP_AFFINITY="explicit,proclist=[16,17,18,19],verbose" #physical cores small=4 (0+4+1)

# export KMP_AFFINITY="explicit,proclist=[0,1,2,3,16,17,18,19],verbose" #logical cores big=4 and small=4 (2+4+2)a
# export KMP_AFFINITY="explicit,proclist=[0,1,6,7,14,15,18,19],verbose" #logical cores big=4 and small=4 (2+4+2)b
# export KMP_AFFINITY="explicit,proclist=[0,2,16,17,18,19],verbose" #physical cores big=2 and small=4 (2+4+1)a
# export KMP_AFFINITY="explicit,proclist=[0,6,14,15,18,19],verbose" #physical cores big=2 and small=4 (2+4+1)b
# export KMP_AFFINITY="explicit,proclist=[0,1,2,3],verbose" #logical cores big=4 (2+0+2)a
# export KMP_AFFINITY="explicit,proclist=[0,1,6,7],verbose" #logical cores big=4 (2+0+2)b
# export KMP_AFFINITY="explicit,proclist=[0,2],verbose" #physical cores big=2 (2+0+1)a
# export KMP_AFFINITY="explicit,proclist=[0,6],verbose" #physical cores big=2 (2+0+1)b
# export KMP_AFFINITY="explicit,proclist=[18,19],verbose" #physical cores small=2 (0+2+1)a
# export KMP_AFFINITY="explicit,proclist=[15,19],verbose" #physical cores small=2 (0+2+1)b

# export KMP_AFFINITY="explicit,proclist=[0,1,18,19],verbose" #logical cores big=2 and small=2 (1+2+2)
# export KMP_AFFINITY="explicit,proclist=[0,18,19],verbose" #physical cores big=1 and small=2 (1+2+1)
# export KMP_AFFINITY="explicit,proclist=[0,1],verbose" #logical cores big=2 (1+0+2)
# export KMP_AFFINITY="explicit,proclist=[0],verbose" #physical cores big=1 (1+0+1)
# export KMP_AFFINITY="explicit,proclist=[19],verbose" #physical cores small=1 (0+1+1)

# python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_full -nt 20 -nsteps 10000 -gmx gmx
# python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_medium -nt 10 -nsteps 10000 -gmx gmx
# python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_low -nt 4 -nsteps 10000 -gmx gmx