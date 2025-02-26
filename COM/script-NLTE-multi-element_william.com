#!/bin/csh -f

#
# This script is a demo script for NLTE TS.
#

date
set mpath = models/HD209458
set dpath = models/HD209458
set pathmu = TEST-data/

#set MODEL = p5777_g+4.4_m0.0_t01_st_z+0.00_a+0.00_c+0.00_n+0.00_o+0.00_r+0.00_s+0.00.mod
#set MODEL = 4969g+4.51z-0.07abu6.0529.interpol
#set MODEL = 6126g+4.368z+0.04abu6.1700.interpol
set MODEL = 6126g+4.368z+0.04abu6.3300.interpol


set Naabu = `echo $MODEL | awk -F 'abu' '{print substr($2, 1, 6)}'`

set Caabu = 6.34
set Feabu = 7.50

set lam_min    = '5882.'
set lam_max    = '5902.'

set deltalam   = '0.005'
set METALLIC   = '     0.04'
set TURBVEL = 1.0


###############################################
# Mu points
###############################################

# Define the new set of mu
set mu = (0.1 0.15 0.2 0.25 0.35 0.45 0.55 0.65 0.75 0.85 0.9 0.95 0.97 0.99 1.0)

# Write the new mu to the mupoints.dat file
echo ${#mu} > ${pathmu}/mupoints.dat
echo $mu | tr ' ' ',' >> ${pathmu}/mupoints.dat

###############################################

#time ~/Documents/GitHub/Turbospectrum/Turbospectrum2020/exec/babsma_lu <<EOF
time ../exec-ifx/babsma_lu <<EOF
###########
# wavelength range for the continuous opacity calculations. Should encompass the full 
# range asked for in the following spectrum calculation (bsyn_lu)
# the step is set to 1A in babsma if smaller than 1A here.
#
'LAMBDA_MIN:'  '${lam_min}'
'LAMBDA_MAX:'  '${lam_max}'
'LAMBDA_STEP:' '${deltalam}'
###########
# model atmosphere. Various formats allowed. Only MARCS can be binary or ascii. Others are ascii
#
'MODELINPUT:' '$mpath/${MODEL}'
'MARCS-FILE:' '.false.'
###########
# output continuous opacity file providing continuous abs and scatt at all atmospheric depths
# for a set of wavelengths defined by lambda_min/max/step. If the step is < 1A, it is set to 
# 1A by default 
#
'MODELOPAC:' 'contopac/${MODEL}opac'
###########
# Chemical composition. First overall metallicity, then alpha/Fe, Helium/H, and r- and s-process
# The latter are scaled according to their solar-system fraction (see makeabund.f)
# finally individual abundances can be provided by first giving how many of them are changed and then
# for each of them their atomic number followed by the absolute abundance on the same line
#
'ABUND_SOURCE:'   'magg'
'METALLICITY:'    '${METALLIC}'
'ALPHA/Fe   :'    '0.00'
'HELIUM     :'    '0.00'
'R-PROCESS  :'    '0.00'
'S-PROCESS  :'    '0.00'
'INDIVIDUAL ABUNDANCES:'   '0'
#'INDIVIDUAL ABUNDANCES:'   '1'
#26  $Feabu
###########
# if xifix true, fixed microturbulence is read from next line (km/s)
# otherwise the value(s) are read from the model atmosphere.
#
'XIFIX:' 'T'
$TURBVEL
EOF

########################################################################
set SUFFIX     = _${lam_min}-${lam_max}_xit${TURBVEL}-NLTE-windows.spec
set result     = ${MODEL}${SUFFIX}

#time ~/Documents/GitHub/Turbospectrum/Turbospectrum2020/exec/bsyn_lu <<EOF
time /home/wdethier/Desktop/Turbospectrum_NLTE/exec-ifx/bsyn_lu <<EOF
###########
# Use NLTE if true. Source function is computed with departure coefficients 
# from departure coefficient file for the atom in model atom file, if they 
# are provided. 
#
'NLTE :'          '.true.'
###########
# file containing NLTE information (species and associated files)
#
'NLTEINFOFILE:'  'DATA/SPECIES_LTE_NLTE.dat'
#
###########
# if present this file will be used to compute the spectrum in a number of  
# windows specified in SEGMENTSFILE, with spectral resolution given by
# RESOLUTION.
# If not specified, a default value of 500000 is used
# Note that a constant step is set for each window, using this resolution.
# Comment out if not needed, and the spectrum will be computed from 
# LAMBDA_MIN to LAMBDA_MAX with a wavelength step = LAMBDA_STEP
# Segments must NOT overlap
#
#'SEGMENTSFILE:'     '${dpath}/uves_giant_Fe-seg.txt'
#'RESOLUTION:'     '300000.'
###########
# spectral interval in the case of a single wavelength interval, i.e. no 
# segmentsfile.
# min and max lambda for the calculations and constant wavelength step
#
'LAMBDA_MIN:'     '${lam_min}'
'LAMBDA_MAX:'     '${lam_max}'
'LAMBDA_STEP:'    '${deltalam}'
###########
# Intensity / Flux 
#
'INTENSITY/FLUX:' 'Intensity'
'MU-POINTS:' '${pathmu}/mupoints.dat'
###########
# for eqwidt only: if true, iterate abundance until observed eqwivalent 
# widths are matched. NOT IMPLEMENTED IN THIS VERSION
#
'ABFIND        :' '.false.'
###########
# file containing continuous opacity at all model points. Can be computed with babsma.f
# or be a .opa file from the MARCS web site.
#
'MODELOPAC:' 'contopac/${MODEL}opac'
###########
# output file containing spectrum, or equivalent widths
#
'RESULTFILE :' 'syntspec/${result}'
###########
# chemical composition
#
# in bsyn.f, in addition to what is explained above for babsma.f,
# isotopic fractions can be set, e.g. 
# 6.012 0.9
# 6.013 0.1
# to set 90% of 12C and 10% of 13C.
'METALLICITY:'    '${METALLIC}'
'ALPHA/Fe   :'    '0.00'
'HELIUM     :'    '0.00'
'R-PROCESS  :'    '0.00'
'S-PROCESS  :'    '0.00'
'INDIVIDUAL ABUNDANCES:'   '2'
11  $Naabu
26  $Feabu
'ISOTOPES : ' '0'
###########
# line lists. First how many there are, and then the list of lists
#
'NFILES   :' '2'
linelists/nlte_ges_linelist_jmg04sep2023_I_II
DATA/Hlinedata
#linelists/nlte_linelist_test.txt
###########
# spherical (T) or plane-parallel (F) radiative transfer. 
# If spherical, a few more parameters are read
# DO NOT CHANGE THESE PARAMETERS UNLESS YOU REALLY KNOW WHAT YOU ARE DOING.
#
'SPHERICAL:'  'F'
  30
  300.00
  15
  1.30
EOF
