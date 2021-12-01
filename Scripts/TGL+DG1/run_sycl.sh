#!/bin/sh
export SYCL_DEVICE_FILTER=level_zero
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_full_dlb -nt 8 -nsteps 10000 -ntmpi 2 -dlb auto -gmx /usr/local/gromacs_sycl/bin/gmx
sleep 60
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_medium_dlb -nt 4 -nsteps 10000 -ntmpi 2 -dlb auto -gmx /usr/local/gromacs_sycl/bin/gmx
sleep 60
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_low_dlb -nt 2 -nsteps 10000 -ntmpi 2 -dlb auto -gmx /usr/local/gromacs_sycl/bin/gmx
sleep 60
unset SYCL_DEVICE_FILTER

export SYCL_DEVICE_FILTER=level_zero
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_full -nt 8 -nsteps 10000 -ntmpi 2 -gmx /usr/local/gromacs_sycl/bin/gmx
sleep 60
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_medium -nt 4 -nsteps 10000 -ntmpi 2 -gmx /usr/local/gromacs_sycl/bin/gmx
sleep 60
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_low -nt 2 -nsteps 10000 -ntmpi 2 -gmx /usr/local/gromacs_sycl/bin/gmx
sleep 60
unset SYCL_DEVICE_FILTER
