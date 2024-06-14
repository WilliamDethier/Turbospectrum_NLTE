import numpy as np
import os
from sys import argv
from example_read_NLTEgrid_2 import *


grid_file = 'ATOMS/Na/NLTEgrid4TS_NA_MARCS_Feb-20-2022.bin'

aux_file = 'ATOMS/Na/auxData_Na_MARCS_Feb-20-2022.dat'

#atmos_id = 'p2500_g+3.0_m0.0_t00_st_z+0.00_a+0.00_c+0.00_n+0.00_o+0.00_r+0.00_s+0.00'
#abund = 4.3000
#atmos_id = 'p6000_g+4.5_m0.0_t00_st_z+0.00_a+0.00_c+0.00_n+0.00_o+0.00_r+0.00_s+0.00'

#atmos_id = 'p5000_g+4.5_m0.0_t00_st_z+0.00_a+0.00_c+0.00_n+0.00_o+0.00_r+0.00_s+0.00'

#atmos_id = 'p7500_g+4.0_m0.0_t00_st_z+0.00_a+0.00_c+0.00_n+0.00_o+0.00_r+0.00_s+0.00'
#atmos_id = 'p4000_g+4.0_m0.0_t00_st_z+0.00_a+0.00_c+0.00_n+0.00_o+0.00_r+0.00_s+0.00'

atmos_id = 'p6000_g+4.5_m0.0_t00_st_z+0.00_a+0.00_c+0.00_n+0.00_o+0.00_r+0.00_s+0.00'

abund = [6.1000]#6.3000,6.4000,6.5000,6.6000,6.7000,6.8000,6.9000,7.0000]



for A in abund:

    grid_to_ts(grid_file, aux_file, atmos_id, A)# abund)
    #grid_to_ts(grid_file, aux_file, atmos_id, abund)
