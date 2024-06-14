import numpy as np
import os
from sys import argv


def grid_to_ts(grid_file, aux_file, atmos_id, abund):

    """ Find model atmosphere in the auxiliarly file """
    aux_atmos = np.loadtxt(aux_file, usecols=(0), dtype=str)
    aux_atmos = np.array([x.replace("'","").replace('"',"") for x in aux_atmos])
    aux_abund, aux_pointer = np.loadtxt(aux_file, usecols=(7,8), unpack=True)

    if atmos_id in aux_atmos:
        """ It will always pick the first record, that might need to be changed
        if e.g. iterating over Vmic """
        pos = np.logical_and(aux_atmos == atmos_id, np.abs(aux_abund-abund) == min(np.abs(aux_abund-abund)) )
        if len(np.where(pos)[0]) > 1:
            for p in np.where(pos)[0]:
                print(f"{aux_atmos[p]}, A(X)={aux_abund[p]}, pointer={aux_pointer[p]} at line {p+1}")
            raise Warning(f"Found {len(np.where(pos)[0])} records in the grid that match {atmos_id} and A(X)={abund}. Please check the grid and aux* file.")
        pointer = int(aux_pointer[pos])
    else:
        raise Warning(f"Can't find record for {atmos_id} in aux file")

    if np.abs(aux_abund[pos]-abund) > 0.1:
        print(F"Warning: abundance for NLTE departure coefficients: {aux_abund[pos]:.3f}")
        print(F"Warning: {aux_abund[pos]-abund:.3f} dex different from target abundance: {abund:.3f}")

    ndep, nk, depart, tau = read_binary_grid(grid_file, pointer)
    depart = depart.T

    depFile = f"./{atmos_id}_{abund:.4f}_DepartureCoeff.asc"
    
    with open(depFile, 'w') as f:
        for i in range(8):
            f.write('# parameter 1.0 1.0\n')
        f.write(F"{abund:.3f}\n")
        f.write(F"{ndep:.0f}\n")
        f.write(F"{nk:.0f}\n")
        for t in tau:
            f.write(F"{t}\n")
        for i in range(ndep):
            for j in range(nk):
                f.write(F"{depart[i,j]}" + ' ') # separate numbers in lines with blank space
            f.write('\n') # separate lines
    print(f"Saved departure coefficients in {depFile}. It can be used as input file for TS")


def read_binary_grid(grid_file, pointer=1):
    """ Read a record from NLTE grid """
    with open(grid_file, 'rb') as f:
        # -1 since Python stars at 0
        pointer = pointer - 1

        f.seek(pointer)
        atmosStr = f.readline(500)#.decode('utf-8', 'ignore').strip()
        ndep = int.from_bytes(f.read(4), byteorder='little')
        nk = int.from_bytes(f.read(4), byteorder='little')
        tau  = np.log10(np.fromfile(f, count = ndep, dtype='f8'))
        depart = np.fromfile(f, dtype='f8', count=ndep*nk).reshape(nk, ndep)

    return ndep, nk, depart, tau





if __name__ == '__main__':
    if len(argv) != 5:
        raise Warning(f"<Usage:> python3.7 read_NLTEgrid.py  NLTEgrid.bin  auxData.txt t5777g44m00 7.5  ")
    else:
        grid_file, aux_file, atmos_id, abund  = argv[1:]
        abund = float(abund)
        atmos_id = atmos_id.replace("'", "").replace('"', '')
    grid_to_ts( grid_file, aux_file, atmos_id, abund)
     
