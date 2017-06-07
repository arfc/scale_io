import fileinput
import re
import numpy as np
import sys

# Parse NEWT output files

# file_base = '/home/lindsayad/scale/SCALE-6.2.1/scale_io/io/msre_conc_cuboid_lattice/calc_buckling_'
file_base = sys.argv[1]

start = int(sys.argv[3])
stop = int(sys.argv[4])
step = 50
temps = [temp for temp in range(start, stop + step, step)]

all_files = [file_base + str(temp) + '.out' for temp in temps]

num_groups = 1
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

fuel_sig_out_scatter = np.zeros((len(temps), num_groups))
mod_sig_out_scatter = np.zeros((len(temps), num_groups))
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

# Create XsecData class

class XsecData():
    def __init__(self, temperature, data, xsec_name, mat_name, out_prefix="newt"):
        self.name = xsec_name.upper()
        self.temperature = np.array(temperature)
        self.data = data
        self.dim = len(data.shape) - 1
        self._error_check()
        self.out_name = out_prefix + "_" + mat_name + "_" + self.name + ".txt"

    def _error_check(self):
        if len(self.temperature.shape) > 1:
            raise RuntimeError("Temperature should only be a 1D array or list")
        if self.temperature.shape[0] != self.data.shape[0]:
            raise RuntimeError("Temperature and data are not the same length")
        if self.dim < 1 or self.dim > 2:
            raise RuntimeError("We expect 1D sets like fission cross section or 2D sets like "
                               "scattering matrices")
        valid_names = ["FLUX", "REMXS", "FISSXS", "NUBAR", "NSF", "FISSE", "DIFFCOEF", \
          "RECIPVEL", "CHI", "GTRANSFXS", "BETA_EFF", "DECAY_CONSTANT"]
        if self.name not in valid_names:
            raise RuntimeError("Specified xsec name does not match any expected by Moltres")

    def write_moltres_input_file(self):
        with open(self.out_name, 'w') as f:
            for i in range(self.temperature.shape[0]):
                if self.dim == 1:
                    data_string_list = [" " + str(j) for j in self.data[i]]
                if self.dim == 2:
                    data_string_list = []
                    self.data[i] = np.transpose(self.data[i])
                    for j in range(self.data[i].shape[0]):
                        for k in self.data[i][j]:
                            data_string_list.append(" " + str(k))
                write_string = str(self.temperature[i]) + "".join(data_string_list) + "\n"
                f.write(write_string)

# Iterate over data objects and write moltres material input files

fuel_data_dict = {"FISSXS" : fuel_sig_f, "FLUX" : fuel_flux, "REMXS" : fuel_sig_r, "NUBAR" : fuel_nubar, "NSF" : fuel_nsf, "FISSE" : fuel_fisse, "DIFFCOEF" : fuel_diff_coeff, "RECIPVEL" : fuel_inv_vel, "CHI" : fuel_chi, "GTRANSFXS" : fuel_scatter_array, "BETA_EFF" : fuel_beta, "DECAY_CONSTANT" : fuel_lambda}
mod_data_dict = {"FISSXS" : mod_sig_f, "FLUX" : mod_flux, "REMXS" : mod_sig_r, "NUBAR" : mod_nubar, "NSF" : mod_nsf, "FISSE" : mod_fisse, "DIFFCOEF" : mod_diff_coeff, "RECIPVEL" : mod_inv_vel, "CHI" : mod_chi, "GTRANSFXS" : mod_scatter_array, "BETA_EFF" : mod_beta, "DECAY_CONSTANT" : mod_lambda}

for name, data in fuel_data_dict.items():
    XsecData(temps, data, name, "fuel", sys.argv[2]).write_moltres_input_file()
for name, data in mod_data_dict.items():
    XsecData(temps, data, name, "mod", sys.argv[2]).write_moltres_input_file()
