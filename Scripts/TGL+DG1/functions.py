import os
import shlex
import subprocess
import csv


def is_path_valid(arg):
    if not os.path.exists(arg):
        print('The file %s does not exists!', arg)


def is_file(arg):
    return os.path.isfile(arg)


def is_folder(arg):
    return os.path.isdir(arg)


def get_path(folder, fileName= None):
    if fileName == None:
        fileList = [os.path.join(folder, p) for p in os.listdir(folder)] #get absoulte path of all files
        #filePath = [file for file in fileList if fileName in file]
        return fileList
    elif fileName != None:
        files = []
        for r, d, f in os.walk(folder): # r= root, d= directory, f= file
            for file in f:
                if file.endswith(fileName) or fileName in file:
                    files.append(os.path.join(r, file))
        return files


def get_parameters(arg, text):
    zero_ind = text.find(arg + " ")
    first_ind = text.find(" ", zero_ind) + 1
    if zero_ind == -1:
        first_ind = text.rindex(" ") + 1
    second_ind = text.find(" ", first_ind)
    if second_ind == -1:
        second_ind = len(text)
    return text[first_ind:second_ind]


def change_parameter(arg, text, new_parameter):
    return text.replace(arg + " " + get_parameters(arg, text), arg + " " + new_parameter)


def add_parameter(arg, text, parameter):
    return text.rstrip() + " " + arg + " " + parameter


def read_cpu_log(log_file):
    return subprocess.check_output(['tail', '-1', log_file]) # outputs in bytes need to .decode("utf-8") to convert to string


def read_cpu_freq(log_file, count):
    cpu_freqs = [[] for i in range(count)]
    cpu_freqs_avg = []
    cpu_freqs_max = []
    with open(log_file, 'r') as f:
        for line in f:
            freq = line.split()
            for i in range(count):
                cpu_freqs[i].append(float(freq[i]))
    for i in range(count):
        cpu_freqs_max.append(max(cpu_freqs[i]))
        cpu_freqs_avg.append(sum(cpu_freqs[i])/len(cpu_freqs[i]))
    cpu_freqs_avg_all = sum(cpu_freqs_avg)/count
    cpu_freqs_max_all = max(cpu_freqs_max)
    return cpu_freqs_avg, cpu_freqs_avg_all, cpu_freqs_max, cpu_freqs_max_all


def read_gpu_log(log_file):
    freq_req = []
    freq_act = []
    render1 = []
    render2 = []
    render3 = []
    render4 = []
    render5 = []
    blitter = []
    video1 = []
    video2 = []
    video_enhance = []
    with open(log_file, 'r') as f:
        for line in f:
            if not (line.startswith(" Freq") or line.startswith(" req")):
                score = line.split()
                freq_req.append(float(score[0]))
                freq_act.append(float(score[1]))
                render1.append(float(score[4]))
                render2.append(float(score[7]))
                render3.append(float(score[8]))
                render4.append(float(score[9]))
                render5.append(float(score[10]))
                blitter.append(float(score[11]))
                video1.append(float(score[14]))
                video2.append(float(score[17]))
                video_enhance.append(float(score[20]))
    assert len(render1) == len(blitter) == len(video2) == len(video1) == len(video_enhance) == len(freq_act) == len(freq_req)
    n_elements = len(render1)
    return sum(freq_req)/n_elements, max(freq_req), sum(freq_act)/n_elements, max(freq_act), sum(render1)/n_elements, sum(render2)/n_elements, sum(render3)/n_elements, sum(render4)/n_elements, sum(render5)/n_elements, sum(blitter)/n_elements, sum(video1)/n_elements, sum(video2)/n_elements, sum(video_enhance)/n_elements


def read_gmx_log(log_file):
    for line in reversed(open(log_file, 'r').readlines()):
        if line.startswith("Performance:"):
            perf = line.split()[1]
        if line.startswith("       Time:"):
            wall_time = line.split()[2]
            return perf, wall_time


def write_csv(result_file, header, data):
    with open(result_file, 'w', encoding='UTF8', newline='') as f:
        writer = csv.writer(f)
        writer.writerow(header)
        writer.writerows(data)


def run_shell(working_dir):
    process = subprocess.Popen(['sh', './run.sh'], cwd=working_dir)
    while True:
        return_code = process.poll()
        if return_code is not None:
            process.terminate()
            print("Process completed")
            return return_code
