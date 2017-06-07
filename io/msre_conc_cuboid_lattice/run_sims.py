from subprocess import call
import sys

ex="/home/lindsayad/scale/SCALE-6.2.1/bin/scalerte"
file_root = sys.argv[1]
start_temp = int(sys.argv[2])
end_temp = int(sys.argv[3])

temp_range = range(start_temp, end_temp + 50, 50)

for temp in temp_range:
    call([ex, file_root + "_" + str(temp) + ".inp"])
