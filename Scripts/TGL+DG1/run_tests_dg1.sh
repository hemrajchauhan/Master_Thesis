#!/bin/sh
export SYCL_DEVICE_FILTER=level_zero
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_full_dg1 -nt 8 -nsteps 10000 -gpu_id 1 -gmx /usr/local/gromacs_sycl/bin/gmx
sleep 60
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_medium_dg1 -nt 4 -nsteps 10000 -gpu_id 1 -gmx /usr/local/gromacs_sycl/bin/gmx
sleep 60
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_low_dg1 -nt 2 -nsteps 10000 -gpu_id 1 -gmx /usr/local/gromacs_sycl/bin/gmx
sleep 60

python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_full_2 -nt 8 -nsteps 10000 -gpu_id 1 -ntmpi 2 -gmx /usr/local/gromacs_sycl/bin/gmx
sleep 60
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_medium_2 -nt 6 -nsteps 10000 -gpu_id 1 -ntmpi 2 -gmx /usr/local/gromacs_sycl/bin/gmx
sleep 60
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_low_2 -nt 4 -nsteps 10000 -gpu_id 1 -ntmpi 2 -gmx /usr/local/gromacs_sycl/bin/gmx
sleep 60
unset SYCL_DEVICE_FILTER

sudo cpupower frequency-set --governor performance
export SYCL_DEVICE_FILTER=level_zero
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_full_perf_dg1 -nt 8 -nsteps 10000 -gpu_id 1 -gmx /usr/local/gromacs_sycl/bin/gmx
sleep 60
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_medium_perf_dg1 -nt 4 -nsteps 10000 -gpu_id 1 -gmx /usr/local/gromacs_sycl/bin/gmx
sleep 60
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_low_perf_dg1 -nt 2 -nsteps 10000 -gpu_id 1 -gmx /usr/local/gromacs_sycl/bin/gmx
sleep 60

python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_full_perf_2 -nt 8 -nsteps 10000 -gpu_id 1 -ntmpi 2 -gmx /usr/local/gromacs_sycl/bin/gmx
sleep 60
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_medium_perf_2 -nt 6 -nsteps 10000 -gpu_id 1 -ntmpi 2 -gmx /usr/local/gromacs_sycl/bin/gmx
sleep 60
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_low_perf_2 -nt 4 -nsteps 10000 -gpu_id 1 -ntmpi 2 -gmx /usr/local/gromacs_sycl/bin/gmx
sleep 60
unset SYCL_DEVICE_FILTER
sudo cpupower frequency-set --governor powersave

sudo intel_gpu_frequency -m
export SYCL_DEVICE_FILTER=level_zero
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_full_freq_dg1 -nt 8 -nsteps 10000 -gpu_id 1 -gmx /usr/local/gromacs_sycl/bin/gmx
sleep 60
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_medium_freq_dg1 -nt 4 -nsteps 10000 -gpu_id 1 -gmx /usr/local/gromacs_sycl/bin/gmx
sleep 60
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_low_freq_dg1 -nt 2 -nsteps 10000 -gpu_id 1 -gmx /usr/local/gromacs_sycl/bin/gmx
sleep 60

python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_full_freq_2 -nt 8 -nsteps 10000 -gpu_id 1 -ntmpi 2 -gmx /usr/local/gromacs_sycl/bin/gmx
sleep 60
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_medium_freq_2 -nt 6 -nsteps 10000 -gpu_id 1 -ntmpi 2 -gmx /usr/local/gromacs_sycl/bin/gmx
sleep 60
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_low_freq_2 -nt 4 -nsteps 10000 -gpu_id 1 -ntmpi 2 -gmx /usr/local/gromacs_sycl/bin/gmx
sleep 60
unset SYCL_DEVICE_FILTER
sudo intel_gpu_frequency -d
