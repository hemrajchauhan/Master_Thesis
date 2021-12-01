#!/bin/sh
sudo intel_gpu_top -o gpu_log.txt & PIDGPU=$!
mpstat 1 >> cpu_log.txt & PIDCPU=$!
COMMAND_LINE & PIDGMX=$!
while kill -0 $PIDGMX 2> /dev/null; do
	cat /proc/cpuinfo | grep 'MHz' | cut -d ':' -f 2 | tr -d '\n' >> cpu_freq.txt; echo "" >>cpu_freq.txt
	sleep 1
done
sudo kill -2 $PIDGPU
sudo kill -2 $PIDCPU
