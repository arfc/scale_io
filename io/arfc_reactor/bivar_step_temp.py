from shutil import copyfile
import fileinput
import re

# These functions for density are based on volumetric expansion coefficients
# given on page 40 of MSRE Design and Operations Report, Part iii, Nuclear
# Analysis

def fdens(temperature):
    alpha_fuel_faeh = 1.18e-4
    alpha_fuel_kel = 1.8 * alpha_fuel_faeh
    rho0_fuel = 2.146
    T0 = 922
    return rho0_fuel * exp(-alpha_fuel_kel * (temperature - T0))

def mdens(temperature):
    alpha_graph_faeh = 1.0e-5
    alpha_graph_kel = 1.8 * alpha_graph_faeh
    rho0_graph = 1.86
    T0 = 922
    return rho0_graph * exp(-alpha_graph_kel * (temperature - T0))

start = 972
stop = 1022
step = 50
root = "calc_buckling"
for fuel_temp in range(start, stop + step, step):
    for mod_temp in range(start, stop + step, step):
        file_name = root + "_" + str(fuel_temp) + "_mod_" + str(mod_temp) + ".inp"
        copyfile(root + ".inp", file_name)
        for line in fileinput.input(file_name, inplace=True):
            if re.search(r'327.*908', line):
                print(line.replace(line, re.sub(r'3\.327(.*)908', '{:.3f}'.format(fdens(fuel_temp)) + r'\g<1>' + str(fuel_temp), line)), end="")
            elif re.search(r'843.*908', line):
                print(line.replace(line, re.sub(r'(843.*)908', r'\g<1>' + str(mod_temp), line)), end="")
            else:
                print(line, end="")
        # sss -mpi 3 $file
