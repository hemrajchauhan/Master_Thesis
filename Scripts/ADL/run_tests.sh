#!/bin/sh
export SYCL_DEVICE_FILTER=level_zero
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_full -nt 8 -nsteps 10000 -gmx /usr/local/gromacs_sycl/bin/gmx
sleep 60
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_medium -nt 4 -nsteps 10000 -gmx /usr/local/gromacs_sycl/bin/gmx
sleep 60
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_low -nt 2 -nsteps 10000 -gmx /usr/local/gromacs_sycl/bin/gmx
sleep 60
unset SYCL_DEVICE_FILTER

python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_opencl_full -nt 8 -nsteps 10000 -gpu_id 0 -gmx /usr/local/gromacs_opencl/bin/gmx
sleep 60
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_opencl_medium -nt 4 -nsteps 10000 -gpu_id 0 -gmx /usr/local/gromacs_opencl/bin/gmx
sleep 60
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_opencl_low -nt 2 -nsteps 10000 -gpu_id 0 -gmx /usr/local/gromacs_opencl/bin/gmx
sleep 60

python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_gcc_full -nt 8 -nsteps 10000 -gmx /usr/local/gromacs_gcc/bin/gmx
sleep 60
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_gcc_medium -nt 4 -nsteps 10000 -gmx /usr/local/gromacs_gcc/bin/gmx
sleep 60
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_gcc_low -nt 2 -nsteps 10000 -gmx /usr/local/gromacs_gcc/bin/gmx
sleep 60



sudo cpupower frequency-set --governor performance
export SYCL_DEVICE_FILTER=level_zero
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_full_perf -nt 8 -nsteps 10000 -gmx /usr/local/gromacs_sycl/bin/gmx
sleep 60
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_medium_perf -nt 4 -nsteps 10000 -gmx /usr/local/gromacs_sycl/bin/gmx
sleep 60
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_low_perf -nt 2 -nsteps 10000 -gmx /usr/local/gromacs_sycl/bin/gmx
sleep 60
unset SYCL_DEVICE_FILTER

python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_opencl_full_perf -nt 8 -nsteps 10000 -gpu_id 0 -gmx /usr/local/gromacs_opencl/bin/gmx
sleep 60
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_opencl_medium_perf -nt 4 -nsteps 10000 -gpu_id 0 -gmx /usr/local/gromacs_opencl/bin/gmx
sleep 60
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_opencl_low_perf -nt 2 -nsteps 10000 -gpu_id 0 -gmx /usr/local/gromacs_opencl/bin/gmx
sleep 60

python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_gcc_full_perf -nt 8 -nsteps 10000 -gmx /usr/local/gromacs_gcc/bin/gmx
sleep 60
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_gcc_medium_perf -nt 4 -nsteps 10000 -gmx /usr/local/gromacs_gcc/bin/gmx
sleep 60
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_gcc_low_perf -nt 2 -nsteps 10000 -gmx /usr/local/gromacs_gcc/bin/gmx
sleep 60
sudo cpupower frequency-set --governor powersave



export OMP_WAIT_POLICY=passive
export SYCL_DEVICE_FILTER=level_zero
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_full_omp -nt 8 -nsteps 10000 -gmx /usr/local/gromacs_sycl/bin/gmx
sleep 60
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_medium_omp -nt 4 -nsteps 10000 -gmx /usr/local/gromacs_sycl/bin/gmx
sleep 60
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_low_omp -nt 2 -nsteps 10000 -gmx /usr/local/gromacs_sycl/bin/gmx
sleep 60
unset SYCL_DEVICE_FILTER

python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_opencl_full_omp -nt 8 -nsteps 10000 -gpu_id 0 -gmx /usr/local/gromacs_opencl/bin/gmx
sleep 60
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_opencl_medium_omp -nt 4 -nsteps 10000 -gpu_id 0 -gmx /usr/local/gromacs_opencl/bin/gmx
sleep 60
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_opencl_low_omp -nt 2 -nsteps 10000 -gpu_id 0 -gmx /usr/local/gromacs_opencl/bin/gmx
sleep 60

python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_gcc_full_omp -nt 8 -nsteps 10000 -gmx /usr/local/gromacs_gcc/bin/gmx
sleep 60
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_gcc_medium_omp -nt 4 -nsteps 10000 -gmx /usr/local/gromacs_gcc/bin/gmx
sleep 60
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_gcc_low_omp -nt 2 -nsteps 10000 -gmx /usr/local/gromacs_gcc/bin/gmx
sleep 60



sudo intel_gpu_frequency -m
export SYCL_DEVICE_FILTER=level_zero
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_full_omp_freq -nt 8 -nsteps 10000 -gmx /usr/local/gromacs_sycl/bin/gmx
sleep 60
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_medium_omp_freq -nt 4 -nsteps 10000 -gmx /usr/local/gromacs_sycl/bin/gmx
sleep 60
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_low_omp_freq -nt 2 -nsteps 10000 -gmx /usr/local/gromacs_sycl/bin/gmx
sleep 60
unset SYCL_DEVICE_FILTER

python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_opencl_full_omp_freq -nt 8 -nsteps 10000 -gpu_id 0 -gmx /usr/local/gromacs_opencl/bin/gmx
sleep 60
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_opencl_medium_omp_freq -nt 4 -nsteps 10000 -gpu_id 0 -gmx /usr/local/gromacs_opencl/bin/gmx
sleep 60
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_opencl_low_omp_freq -nt 2 -nsteps 10000 -gpu_id 0 -gmx /usr/local/gromacs_opencl/bin/gmx
sleep 60

python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_gcc_full_omp_freq -nt 8 -nsteps 10000 -gmx /usr/local/gromacs_gcc/bin/gmx
sleep 60
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_gcc_medium_omp_freq -nt 4 -nsteps 10000 -gmx /usr/local/gromacs_gcc/bin/gmx
sleep 60
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_gcc_low_omp_freq -nt 2 -nsteps 10000 -gmx /usr/local/gromacs_gcc/bin/gmx
sleep 60




unset OMP_WAIT_POLICY
export SYCL_DEVICE_FILTER=level_zero
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_full_freq -nt 8 -nsteps 10000 -gmx /usr/local/gromacs_sycl/bin/gmx
sleep 60
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_medium_freq -nt 4 -nsteps 10000 -gmx /usr/local/gromacs_sycl/bin/gmx
sleep 60
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_sycl_low_freq -nt 2 -nsteps 10000 -gmx /usr/local/gromacs_sycl/bin/gmx
sleep 60
unset SYCL_DEVICE_FILTER

python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_opencl_full_freq -nt 8 -nsteps 10000 -gpu_id 0 -gmx /usr/local/gromacs_opencl/bin/gmx
sleep 60
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_opencl_medium_freq -nt 4 -nsteps 10000 -gpu_id 0 -gmx /usr/local/gromacs_opencl/bin/gmx
sleep 60
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_opencl_low_freq -nt 2 -nsteps 10000 -gpu_id 0 -gmx /usr/local/gromacs_opencl/bin/gmx
sleep 60

python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_gcc_full_freq -nt 8 -nsteps 10000 -gmx /usr/local/gromacs_gcc/bin/gmx
sleep 60
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_gcc_medium_freq -nt 4 -nsteps 10000 -gmx /usr/local/gromacs_gcc/bin/gmx
sleep 60
python3 ./FAH_GMX.py -i Projects/ -o Projects/ -l gmx_gcc_low_freq -nt 2 -nsteps 10000 -gmx /usr/local/gromacs_gcc/bin/gmx
sleep 60
sudo intel_gpu_frequency -d
