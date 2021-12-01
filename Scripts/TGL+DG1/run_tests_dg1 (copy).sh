#!/bin/sh
# export SYCL_DEVICE_FILTER=level_zero
# python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_full_dg1 -nt 8 -nsteps 10000 -gpu_id 1 -gmx /usr/local/gromacs_sycl/bin/gmx
# sleep 60
# python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_medium_dg1 -nt 4 -nsteps 10000 -gpu_id 1 -gmx /usr/local/gromacs_sycl/bin/gmx
# sleep 60
# python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_low_dg1 -nt 2 -nsteps 10000 -gpu_id 1 -gmx /usr/local/gromacs_sycl/bin/gmx
# sleep 60

# python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_full_2 -nt 8 -nsteps 10000 -gpu_id 1 -ntmpi 2 -gmx /usr/local/gromacs_sycl/bin/gmx
# sleep 60
# python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_medium_2 -nt 6 -nsteps 10000 -gpu_id 1 -ntmpi 2 -gmx /usr/local/gromacs_sycl/bin/gmx
# sleep 60
# python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_low_2 -nt 4 -nsteps 10000 -gpu_id 1 -ntmpi 2 -gmx /usr/local/gromacs_sycl/bin/gmx
# sleep 60
# unset SYCL_DEVICE_FILTER

python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_gcc_full -nt 8 -nsteps 10000 -gmx /usr/local/gromacs_gcc/bin/gmx
sleep 60
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_gcc_medium -nt 4 -nsteps 10000 -gmx /usr/local/gromacs_gcc/bin/gmx
sleep 60
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_gcc_low -nt 2 -nsteps 10000 -gmx /usr/local/gromacs_gcc/bin/gmx
sleep 60


sudo cpupower frequency-set --governor performance
# export SYCL_DEVICE_FILTER=level_zero
# python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_full_perf_dg1 -nt 8 -nsteps 10000 -gpu_id 1 -gmx /usr/local/gromacs_sycl/bin/gmx
# sleep 60
# python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_medium_perf_dg1 -nt 4 -nsteps 10000 -gpu_id 1 -gmx /usr/local/gromacs_sycl/bin/gmx
# sleep 60
# python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_low_perf_dg1 -nt 2 -nsteps 10000 -gpu_id 1 -gmx /usr/local/gromacs_sycl/bin/gmx
# sleep 60

# python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_full_perf_2 -nt 8 -nsteps 10000 -gpu_id 1 -ntmpi 2 -gmx /usr/local/gromacs_sycl/bin/gmx
# sleep 60
# python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_medium_perf_2 -nt 6 -nsteps 10000 -gpu_id 1 -ntmpi 2 -gmx /usr/local/gromacs_sycl/bin/gmx
# sleep 60
# python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_low_perf_2 -nt 4 -nsteps 10000 -gpu_id 1 -ntmpi 2 -gmx /usr/local/gromacs_sycl/bin/gmx
# unset SYCL_DEVICE_FILTER

python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_gcc_full_perf -nt 8 -nsteps 10000 -gmx /usr/local/gromacs_gcc/bin/gmx
sleep 60
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_gcc_medium_perf -nt 4 -nsteps 10000 -gmx /usr/local/gromacs_gcc/bin/gmx
sleep 60
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_gcc_low_perf -nt 2 -nsteps 10000 -gmx /usr/local/gromacs_gcc/bin/gmx
sleep 60
sudo cpupower frequency-set --governor powersave



# export OMP_WAIT_POLICY=passive
# export SYCL_DEVICE_FILTER=level_zero
# python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_full_omp_dg1 -nt 8 -nsteps 10000 -gpu_id 1 -gmx /usr/local/gromacs_sycl/bin/gmx
# sleep 60
# python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_medium_omp_dg1 -nt 4 -nsteps 10000 -gpu_id 1 -gmx /usr/local/gromacs_sycl/bin/gmx
# sleep 60
# python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_low_omp_dg1 -nt 2 -nsteps 10000 -gpu_id 1 -gmx /usr/local/gromacs_sycl/bin/gmx
# sleep 60

# python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_full_omp_2 -nt 8 -nsteps 10000 -gpu_id 1 -ntmpi 2 -gmx /usr/local/gromacs_sycl/bin/gmx
# sleep 60
# python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_medium_omp_2 -nt 6 -nsteps 10000 -gpu_id 1 -ntmpi 2 -gmx /usr/local/gromacs_sycl/bin/gmx
# sleep 60
# python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_low_omp_2 -nt 4 -nsteps 10000 -gpu_id 1 -ntmpi 2 -gmx /usr/local/gromacs_sycl/bin/gmx
# sleep 60
# unset SYCL_DEVICE_FILTER


# python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_gcc_full_omp -nt 8 -nsteps 10000 -gmx /usr/local/gromacs_gcc/bin/gmx
# sleep 60
# python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_gcc_medium_omp -nt 4 -nsteps 10000 -gmx /usr/local/gromacs_gcc/bin/gmx
# sleep 60
# python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_gcc_low_omp -nt 2 -nsteps 10000 -gmx /usr/local/gromacs_gcc/bin/gmx
# sleep 60



# sudo intel_gpu_frequency -m
# export SYCL_DEVICE_FILTER=level_zero
# python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_full_omp_freq_dg1 -nt 8 -nsteps 10000 -gpu_id 1 -gmx /usr/local/gromacs_sycl/bin/gmx
# sleep 60
# python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_medium_omp_freq_dg1 -nt 4 -nsteps 10000 -gpu_id 1 -gmx /usr/local/gromacs_sycl/bin/gmx
# sleep 60
# python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_low_omp_freq_dg1 -nt 2 -nsteps 10000 -gpu_id 1 -gmx /usr/local/gromacs_sycl/bin/gmx
# sleep 60

# python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_full_omp_freq_2 -nt 8 -nsteps 10000 -gpu_id 1 -ntmpi 2 -gmx /usr/local/gromacs_sycl/bin/gmx
# sleep 60
# python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_medium_omp_freq_2 -nt 6 -nsteps 10000 -gpu_id 1 -ntmpi 2 -gmx /usr/local/gromacs_sycl/bin/gmx
# sleep 60
# python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_low_omp_freq_2 -nt 4 -nsteps 10000 -gpu_id 1 -ntmpi 2 -gmx /usr/local/gromacs_sycl/bin/gmx
# sleep 60
# unset SYCL_DEVICE_FILTER

# python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_gcc_full_omp_freq -nt 8 -nsteps 10000 -gmx /usr/local/gromacs_gcc/bin/gmx
# sleep 60
# python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_gcc_medium_omp_freq -nt 4 -nsteps 10000 -gmx /usr/local/gromacs_gcc/bin/gmx
# sleep 60
# python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_gcc_low_omp_freq -nt 2 -nsteps 10000 -gmx /usr/local/gromacs_gcc/bin/gmx
# sleep 60


# unset OMP_WAIT_POLICY
# export SYCL_DEVICE_FILTER=level_zero
# python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_full_freq_dg1 -nt 8 -nsteps 10000 -gpu_id 1 -gmx /usr/local/gromacs_sycl/bin/gmx
# sleep 60
# python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_medium_freq_dg1 -nt 4 -nsteps 10000 -gpu_id 1 -gmx /usr/local/gromacs_sycl/bin/gmx
# sleep 60
# python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_low_freq_dg1 -nt 2 -nsteps 10000 -gpu_id 1 -gmx /usr/local/gromacs_sycl/bin/gmx
# sleep 60

# python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_full_freq_2 -nt 8 -nsteps 10000 -gpu_id 1 -ntmpi 2 -gmx /usr/local/gromacs_sycl/bin/gmx
# sleep 60
# python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_medium_freq_2 -nt 6 -nsteps 10000 -gpu_id 1 -ntmpi 2 -gmx /usr/local/gromacs_sycl/bin/gmx
# sleep 60
# python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_low_freq_2 -nt 4 -nsteps 10000 -gpu_id 1 -ntmpi 2 -gmx /usr/local/gromacs_sycl/bin/gmx
# sleep 60
# unset SYCL_DEVICE_FILTER

# python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_gcc_full_freq -nt 8 -nsteps 10000 -gmx /usr/local/gromacs_gcc/bin/gmx
# sleep 60
# python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_gcc_medium_freq -nt 4 -nsteps 10000 -gmx /usr/local/gromacs_gcc/bin/gmx
# sleep 60
# python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_gcc_low_freq -nt 2 -nsteps 10000 -gmx /usr/local/gromacs_gcc/bin/gmx
# sleep 60
# sudo intel_gpu_frequency -d
