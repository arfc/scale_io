from shutil import copyfile
import fileinput
import re

def fdens(temperature):
    # # can't remember source
    # return 2.41303 - 0.0004884 * temperature
    # Cammi 2011
    return 3.374 * (1. - 1.9857e-4 * (temperature - 839))

start = 800
stop = 1050
step = 50
root = "calc_xsecs_provided_buckling"
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
