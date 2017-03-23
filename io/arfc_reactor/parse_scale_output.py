import fileinput
import re
import numpy as np

file_base = '/home/lindsayad/scale/C834MNYCP02/SCALE-6.2.1/lindsayad/io/arfc_reactor/calc_xsecs_provided_buckling_'

fuel_temps = [fuel_temp for fuel_temp in range(800, 1050 + 50, 50)]
mod_temps = [mod_temp for mod_temp in range(800, 1050 + 50, 50)]

# # Uncomment this if wanting to create a 2D group cross section dependence on both fuel and moderator temperatures
# # Would have to write more code to get this into a good 2D format
# all_files = [file_base + str(fuel_temp) + '_mod_' + str(mod_temp) + '.out' for mod_temp in mod_temps for fuel_temp in fuel_temps]

all_files = [file_base + str(mod_temp) + '_mod_' + str(mod_temp) + '.out' for mod_temp in mod_temps]

num_groups = 2
num_precursor_groups = 6

fuel_xsecs = []
mod_xsecs = []
fuel_scatter_xsecs = []
mod_scatter_xsecs = []
fuel_inv_vel = []
fuel_lambda = []
fuel_beta = []
fuel_chi = []
mod_inv_vel = []
mod_lambda = []
mod_beta = []
mod_chi = []

for file_name in all_files:

    file = open(file_name, 'r')

    # Collect a whole lot of fuel transport data
    for line in file:
        if re.search(r'Group.*Total.*Transport', line):
            break
    file.readline()
    fuel_current_temp_xsecs = []
    for i in range(num_groups):
        fuel_current_temp_xsecs.append([float(i) for i in file.readline().split()])
    fuel_xsecs.append(fuel_current_temp_xsecs)

    # Collect fuel recipvel
    for line in file:
        if re.search(r'Group.*Inv\. Velocity', line):
            break
    file.readline()
    file.readline()
    current_temp_fuel_inv_vel = []
    for i in range(num_groups):
        inv_velocity_line_string = file.readline().split()
        current_temp_fuel_inv_vel.append(inv_velocity_line_string[1])
    fuel_inv_vel.append(current_temp_fuel_inv_vel)

    # Collect fuel scattering data
    for line in file:
        if re.search(r'P0 Scattering Matrix', line):
            break
    file.readline()
    file.readline()
    current_temp_fuel_scatter_xsecs = []
    first_scatter_line = file.readline().split()
    current_temp_fuel_scatter_xsecs.append([float(string) for index, string in enumerate(first_scatter_line) \
                                       if index in range(2, len(first_scatter_line))])
    for i in range(1, num_groups):
        next_scatter_line = file.readline().split()
        current_temp_fuel_scatter_xsecs.append([float(string) for index, string in enumerate(next_scatter_line) \
                                           if index in range(1, len(next_scatter_line))])
    fuel_scatter_xsecs.append(current_temp_fuel_scatter_xsecs)

    # Collect fuel chi
    for line in file:
        if re.search(r'Prompt fission fraction', line):
            break
    file.readline()
    file.readline()
    current_temp_fuel_chi = []
    for i in range(num_groups):
        chi_line_string = file.readline().split()
        current_temp_fuel_chi.append(chi_line_string[1])
    fuel_chi.append(current_temp_fuel_chi)

    # Collect fuel lambda and beta
    for line in file:
        if re.search(r'Lambda', line):
            break
    file.readline()
    current_temp_fuel_lambda = []
    current_temp_fuel_beta = []
    for i in range(num_precursor_groups):
        decay_line_string = file.readline().split()
        current_temp_fuel_lambda.append(decay_line_string[1])
        current_temp_fuel_beta.append(decay_line_string[2])
    fuel_lambda.append(current_temp_fuel_lambda)
    fuel_beta.append(current_temp_fuel_beta)

    # Collect a whole lot of moderator transport data
    for line in file:
        if re.search(r'Group.*Total.*Transport', line):
            break
    file.readline()
    mod_current_temp_xsecs = []
    for i in range(num_groups):
        mod_current_temp_xsecs.append([float(i) for i in file.readline().split()])
    mod_xsecs.append(mod_current_temp_xsecs)

    # Collect mod recipvel
    for line in file:
        if re.search(r'Group.*Inv\. Velocity', line):
            break
    file.readline()
    file.readline()
    current_temp_mod_inv_vel = []
    for i in range(num_groups):
        inv_velocity_line_string = file.readline().split()
        current_temp_mod_inv_vel.append(inv_velocity_line_string[1])
    mod_inv_vel.append(current_temp_mod_inv_vel)

    # Collect moderator scattering data
    for line in file:
        if re.search(r'P0 Scattering Matrix', line):
            break
    file.readline()
    file.readline()
    current_temp_mod_scatter_xsecs = []
    first_scatter_line = file.readline().split()
    current_temp_mod_scatter_xsecs.append([float(string) for index, string in enumerate(first_scatter_line) \
                                       if index in range(2, len(first_scatter_line))])
    for i in range(1, num_groups):
        next_scatter_line = file.readline().split()
        current_temp_mod_scatter_xsecs.append([float(string) for index, string in enumerate(next_scatter_line) \
                                           if index in range(1, len(next_scatter_line))])
    mod_scatter_xsecs.append(current_temp_mod_scatter_xsecs)

    # Collect mod chi
    for line in file:
        if re.search(r'Prompt fission fraction', line):
            break
    file.readline()
    file.readline()
    current_temp_mod_chi = []
    for i in range(num_groups):
        chi_line_string = file.readline().split()
        current_temp_mod_chi.append(chi_line_string[1])
    mod_chi.append(current_temp_mod_chi)

    # Collect mod lambda and beta
    for line in file:
        if re.search(r'Lambda', line):
            break
    file.readline()
    current_temp_mod_lambda = []
    current_temp_mod_beta = []
    for i in range(num_precursor_groups):
        decay_line_string = file.readline().split()
        current_temp_mod_lambda.append(decay_line_string[1])
        current_temp_mod_beta.append(decay_line_string[2])
    mod_lambda.append(current_temp_mod_lambda)
    mod_beta.append(current_temp_mod_beta)
# end for file_name

fuel_array = np.array(fuel_xsecs)
mod_array = np.array(mod_xsecs)
fuel_scatter_array = np.array(fuel_scatter_xsecs)
mod_scatter_array = np.array(mod_scatter_xsecs)

fuel_sig_out_scatter = np.zeros((len(fuel_temps), num_groups))
mod_sig_out_scatter = np.zeros((len(fuel_temps), num_groups))
for i in range(fuel_scatter_array.shape[0]):
    for j in range(num_groups):
        # for k in num_groups:
        fuel_sig_out_scatter[i][j] = sum([to_k_from_j_scatter_xsec for k, to_k_from_j_scatter_xsec \
                                    in np.ndenumerate(fuel_scatter_array[i][j]) if k[0] != j])
        mod_sig_out_scatter[i][j] = sum([to_k_from_j_scatter_xsec for k, to_k_from_j_scatter_xsec \
                                    in np.ndenumerate(mod_scatter_array[i][j]) if k[0] != j])


fuel_nsf = fuel_array[:, :, 5]
fuel_sig_f = fuel_array[:, :, 7]
fuel_sig_a = fuel_array[:, :, 4]
fuel_sig_r = fuel_sig_a + fuel_sig_out_scatter
fuel_nubar = fuel_nsf / fuel_sig_f
fuel_fisse = fuel_array[:, :, 6] / fuel_sig_f / 1.6e-19 / 1e6
fuel_diff_coeff = 1. / (fuel_array[:, :, 2] * 3.)
fuel_flux = fuel_array[:, :, 8]
fuel_inv_vel = np.array(fuel_inv_vel)
fuel_lambda = np.array(fuel_lambda)
fuel_beta = np.array(fuel_beta)
fuel_chi = np.array(fuel_chi)

mod_nsf = mod_array[:, :, 5]
mod_sig_f = mod_array[:, :, 7]
mod_sig_a = mod_array[:, :, 4]
mod_sig_r = mod_sig_a + mod_sig_out_scatter
mod_nubar = mod_nsf * 0
mod_fisse = mod_array[:, :, 6] * 0
mod_diff_coeff = 1. / (mod_array[:, :, 2] * 3.)
mod_flux = mod_array[:, :, 8]
mod_inv_vel = np.array(mod_inv_vel)
mod_lambda = np.array(mod_lambda)
mod_beta = np.array(mod_beta)
mod_chi = np.array(mod_chi)
