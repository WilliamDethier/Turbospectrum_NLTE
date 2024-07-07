#!/bin/csh -f

#
# This script is a demo script for NLTE TS.
#

date
#set mpath = models/DREAM/HATP33/
#set dpath = models/DREAM/HATP33/
#set mpath = models/DREAM/WASP166/
#set dpath = models/DREAM/WASP166/
#set mpath = models/WASP20/
#set dpath = models/WASP20/
#set mpath = models/WASP31/
#set dpath = models/WASP31/
set mpath = models/dany/
set dpath = models/dany/

#set mpath = models/beta_pic/
#set dpath = models/beta_pic/

#set mpath = models/
#set dpath = models/
#set MODEL = 5190g+4.545z+0.00abu5.8000.interpol
#set MODEL = 5190g+4.545z+0.00abu5.9000.interpol
#set MODEL = 5190g+4.545z+0.00abu6.0000.interpol
#set MODEL = 5190g+4.545z+0.00abu6.1700.interpol
#set MODEL = 5190g+4.545z+0.00abu6.2000.interpol
#set MODEL = 5190g+4.545z+0.00abu6.3000.interpol
#set MODEL = 5190g+4.545z+0.00abu6.4000.interpol
#set MODEL = 5190g+4.545z+0.00abu6.5000.interpol

#set MODEL = 4653g+4.6z+0.00abu5.8000.interpol
#set MODEL = 4653g+4.6z+0.00abu5.9000.interpol
#set MODEL = 4653g+4.6z+0.00abu6.0000.interpol
#set MODEL = 4653g+4.6z+0.00abu6.1700.interpol
#set MODEL = 4653g+4.6z+0.00abu6.2000.interpol
#set MODEL = 4653g+4.6z+0.00abu6.3000.interpol
#set MODEL = 4653g+4.6z+0.00abu6.4000.interpol
#set MODEL = 4653g+4.6z+0.00abu6.5000.interpol

#set MODEL = 6460g+4.03z+0.00abu5.8000.interpol
#set MODEL = 6460g+4.03z+0.00abu5.9000.interpol
#set MODEL = 6460g+4.03z+0.00abu6.0000.interpol
#set MODEL = 6460g+4.03z+0.00abu6.0250.interpol
#set MODEL = 6460g+4.03z+0.00abu6.0500.interpol
#set MODEL = 6460g+4.03z+0.00abu6.0750.interpol
#set MODEL = 6460g+4.03z+0.00abu6.1000.interpol
#set MODEL = 6460g+4.03z+0.00abu6.1250.interpol
#set MODEL = 6460g+4.03z+0.00abu6.1500.interpol
#set MODEL = 6460g+4.03z+0.00abu6.1750.interpol

#set MODEL = 6460g+4.03z+0.00abu6.1700.interpol
#set MODEL = 6460g+4.03z+0.00abu6.2000.interpol
#set MODEL = 6460g+4.03z+0.00abu6.3000.interpol
#set MODEL = 6460g+4.03z+0.00abu6.4000.interpol
#set MODEL = 6460g+4.03z+0.00abu6.5000.interpol
#set MODEL = 6460g+4.03z+0.00abu6.2250.interpol
#set MODEL = 6460g+4.03z+0.00abu6.2325.interpol
#set MODEL = 6460g+4.03z+0.00abu6.2400.interpol
#set MODEL = 6460g+4.03z+0.00abu6.2475.interpol
#set MODEL = 6460g+4.03z+0.00abu6.2500.interpol
#set MODEL = 6460g+4.03z+0.00abu6.2550.interpol
#set MODEL = 6460g+4.03z+0.00abu6.2625.interpol
#set MODEL = 6460g+4.03z+0.00abu6.2700.interpol
#set MODEL = 6460g+4.03z+0.00abu6.2750.interpol
#set MODEL = 6460g+4.03z+0.00abu6.2775.interpol
#set MODEL = 6460g+4.03z+0.00abu6.2850.interpol
#set MODEL = 6460g+4.03z+0.00abu6.2925.interpol
#set MODEL = 6460g+4.03z+0.00abu6.3250.interpol
#set MODEL = 6460g+4.03z+0.00abu6.3500.interpol
#set MODEL = 6460g+4.03z+0.00abu6.3750.interpol
#set MODEL = 6460g+4.03z+0.00abu6.2675.interpol

#set MODEL = 6760g+4.03z+0.00abu6.2500.interpol
#set MODEL = 6760g+4.03z+0.00abu6.2525.interpol
#set MODEL = 6760g+4.03z+0.00abu6.2550.interpol
#set MODEL = 6760g+4.03z+0.00abu6.2575.interpol
#set MODEL = 6760g+4.03z+0.00abu6.2600.interpol
#set MODEL = 6760g+4.03z+0.00abu6.1500.interpol
#set MODEL = 6760g+4.03z+0.00abu6.2000.interpol
#set MODEL = 6760g+4.03z+0.00abu6.3000.interpol
#set MODEL = 6760g+4.03z+0.00abu6.3500.interpol
#set MODEL = 6760g+4.03z+0.00abu6.4000.interpol

#set MODEL = 6610g+4.03z+0.00abu6.2250.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2255.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2260.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2265.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2270.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2275.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2280.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2285.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2290.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2295.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2300.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2305.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2310.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2315.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2320.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2325.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2330.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2335.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2340.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2345.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2350.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2355.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2360.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2365.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2370.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2375.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2380.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2385.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2390.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2395.interpol

#set MODEL = 6610g+4.03z+0.00abu6.1500.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2000.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2400.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2405.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2410.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2415.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2420.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2425.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2430.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2435.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2440.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2445.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2450.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2455.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2460.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2465.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2470.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2475.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2480.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2485.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2490.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2495.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2500.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2505.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2510.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2515.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2520.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2525.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2530.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2535.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2540.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2545.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2550.interpol

#
#set MODEL = 6610g+4.03z+0.00abu6.2555.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2560.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2565.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2570.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2575.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2580.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2585.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2590.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2595.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2600.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2605.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2610.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2615.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2620.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2625.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2630.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2635.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2640.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2645.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2650.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2500.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2550.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2600.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2650.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2700.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2750.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2800.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2850.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2900.interpol
#set MODEL = 6610g+4.03z+0.00abu6.2950.interpol
#set MODEL = 6610g+4.03z+0.00abu6.3000.interpol
#set MODEL = 6610g+4.03z+0.00abu6.3050.interpol
#set MODEL = 6610g+4.03z+0.00abu6.3500.interpol
#set MODEL = 6610g+4.03z+0.00abu6.4000.interpol
#set MODEL = 6170g+4.03z+0.00abu6.2500.interpol
#set MODEL = 6170g+4.03z+0.00abu6.2525.interpol
#set MODEL = 6170g+4.03z+0.00abu6.2550.interpol
#set MODEL = 6170g+4.03z+0.00abu6.2575.interpol
#set MODEL = 6170g+4.03z+0.00abu6.2600.interpol




#set MODEL = 6820g+4.1z+0.00abu5.8000.interpol
#set MODEL = 6820g+4.1z+0.00abu5.9000.interpol
#set MODEL = 6820g+4.1z+0.00abu6.0000.interpol
#set MODEL = 6820g+4.1z+0.00abu6.1700.interpol
#set MODEL = 6820g+4.1z+0.00abu6.2000.interpol
#set MODEL = 6820g+4.1z+0.00abu6.3000.interpol
#set MODEL = 6820g+4.1z+0.00abu6.4000.interpol
#set MODEL = 6820g+4.1z+0.00abu6.5000.interpol
#set MODEL = 6820g+4.1z+0.00abu6.6000.interpol
#set MODEL = 6820g+4.1z+0.00abu6.7000.interpol
#set MODEL = 6820g+4.1z+0.00abu6.8000.interpol
#set MODEL = 6820g+4.1z+0.00abu6.9000.interpol
#set MODEL = 6820g+4.1z+0.00abu7.0000.interpol

#set MODEL = 5499g+4.044z+0.00abu5.8000.interpol
#set MODEL = 5499g+4.044z+0.00abu5.9000.interpol
#set MODEL = 5499g+4.044z+0.00abu6.0000.interpol
#set MODEL = 5499g+4.044z+0.00abu6.1700.interpol
#set MODEL = 5499g+4.044z+0.00abu6.2000.interpol
#set MODEL = 5499g+4.044z+0.00abu6.3000.interpol
#set MODEL = 5499g+4.044z+0.00abu6.4000.interpol
#set MODEL = 5499g+4.044z+0.00abu6.5000.interpol
#set MODEL = 5499g+4.044z+0.00abu6.6000.interpol
#set MODEL = 5499g+4.044z+0.00abu6.7000.interpol
#set MODEL = 5499g+4.044z+0.00abu6.8000.interpol
#set MODEL = 5499g+4.044z+0.00abu6.9000.interpol
#set MODEL = 5499g+4.044z+0.00abu7.0000.interpol

#set MODEL = 6364g+4.291z+0.00abu5.8000.interpol
#set MODEL = 6364g+4.291z+0.00abu5.9000.interpol
#set MODEL = 6364g+4.291z+0.00abu6.0000.interpol
#set MODEL = 6364g+4.291z+0.00abu6.1700.interpol
#set MODEL = 6364g+4.291z+0.00abu6.2000.interpol
#set MODEL = 6364g+4.291z+0.00abu6.3000.interpol
#set MODEL = 6364g+4.291z+0.00abu6.4000.interpol
#set MODEL = 6364g+4.291z+0.00abu6.5000.interpol

#set MODEL = 5636g+4.49z+0.00abu5.8000.interpol
#set MODEL = 5636g+4.49z+0.00abu5.9000.interpol
#set MODEL = 5636g+4.49z+0.00abu6.0000.interpol
#set MODEL = 5636g+4.49z+0.00abu6.1700.interpol
#set MODEL = 5636g+4.49z+0.00abu6.2000.interpol
#set MODEL = 5636g+4.49z+0.00abu6.3000.interpol
#set MODEL = 5636g+4.49z+0.00abu6.4000.interpol
#set MODEL = 5636g+4.49z+0.00abu6.5000.interpol
#set MODEL = 5636g+4.49z+0.00abu6.6000.interpol
#set MODEL = 5636g+4.49z+0.00abu6.7000.interpol
#set MODEL = 5636g+4.49z+0.00abu6.8000.interpol
#set MODEL = 5636g+4.49z+0.00abu6.9000.interpol
#set MODEL = 5636g+4.49z+0.00abu7.0000.interpol

#set MODEL = 6354g+4.285z+0.00abu5.8000.interpol
#set MODEL = 6354g+4.285z+0.00abu5.9000.interpol
#set MODEL = 6354g+4.285z+0.00abu6.0000.interpol
#set MODEL = 6354g+4.285z+0.00abu6.1700.interpol
#set MODEL = 6354g+4.285z+0.00abu6.2000.interpol
#set MODEL = 6354g+4.285z+0.00abu6.3000.interpol
#set MODEL = 6354g+4.285z+0.00abu6.4000.interpol
#set MODEL = 6354g+4.285z+0.00abu6.5000.interpol

#set MODEL = 5576g+4.52z+0.00abu5.8000.interpol
#set MODEL = 5576g+4.52z+0.00abu5.9000.interpol
#set MODEL = 5576g+4.52z+0.00abu6.0000.interpol
#set MODEL = 5576g+4.52z+0.00abu6.1700.interpol
#set MODEL = 5576g+4.52z+0.00abu6.2000.interpol
#set MODEL = 5576g+4.52z+0.00abu6.3000.interpol
#set MODEL = 5576g+4.52z+0.00abu6.4000.interpol
#set MODEL = 5576g+4.52z+0.00abu6.5000.interpol

#set MODEL = 5793g+4.281z+0.00abu5.8000.interpol
#set MODEL = 5793g+4.281z+0.00abu5.9000.interpol
#set MODEL = 5793g+4.281z+0.00abu6.0000.interpol
#set MODEL = 5793g+4.281z+0.00abu6.1700.interpol
#set MODEL = 5793g+4.281z+0.00abu6.2000.interpol
#set MODEL = 5793g+4.281z+0.00abu6.3000.interpol
#set MODEL = 5793g+4.281z+0.00abu6.4000.interpol
#set MODEL = 5793g+4.281z+0.00abu6.5000.interpol

#set MODEL = 5552g+4.3437z+0.00abu5.8000.interpol
#set MODEL = 5552g+4.3437z+0.00abu5.9000.interpol
#set MODEL = 5552g+4.3437z+0.00abu6.0000.interpol
#set MODEL = 5552g+4.3437z+0.00abu6.1700.interpol
#set MODEL = 5552g+4.3437z+0.00abu6.2000.interpol
#set MODEL = 5552g+4.3437z+0.00abu6.3000.interpol
#set MODEL = 5552g+4.3437z+0.00abu6.4000.interpol
#set MODEL = 5552g+4.3437z+0.00abu6.5000.interpol
#set MODEL = 5552g+4.3437z+0.00abu6.6000.interpol
#set MODEL = 5552g+4.3437z+0.00abu6.7000.interpol
#set MODEL = 5552g+4.3437z+0.00abu6.8000.interpol
#set MODEL = 5552g+4.3437z+0.00abu6.9000.interpol
#set MODEL = 5552g+4.3437z+0.00abu7.0000.interpol

#set MODEL = 4425g+4.633z+0.00abu5.8000.interpol
#set MODEL = 4425g+4.633z+0.00abu5.9000.interpol
#set MODEL = 4425g+4.633z+0.00abu6.0000.interpol
#set MODEL = 4425g+4.633z+0.00abu6.1700.interpol
#set MODEL = 4425g+4.633z+0.00abu6.2000.interpol
#set MODEL = 4425g+4.633z+0.00abu6.3000.interpol
#set MODEL = 4425g+4.633z+0.00abu6.4000.interpol
#set MODEL = 4425g+4.633z+0.00abu6.5000.interpol

#set MODEL = 4910g+4.6z+0.00abu5.8000.interpol
#set MODEL = 4910g+4.6z+0.00abu5.9000.interpol
#set MODEL = 4910g+4.6z+0.00abu6.0000.interpol
#set MODEL = 4910g+4.6z+0.00abu6.1700.interpol
#set MODEL = 4910g+4.6z+0.00abu6.2000.interpol
#set MODEL = 4910g+4.6z+0.00abu6.3000.interpol
#set MODEL = 4910g+4.6z+0.00abu6.4000.interpol
#set MODEL = 4910g+4.6z+0.00abu6.5000.interpol

#set MODEL = 6050g+4.34z+0.00abu5.8000.interpol
#set MODEL = 6050g+4.34z+0.00abu5.9000.interpol
#set MODEL = 6050g+4.34z+0.00abu6.0000.interpol
#set MODEL = 6050g+4.34z+0.00abu6.1700.interpol
#set MODEL = 6050g+4.34z+0.00abu6.2000.interpol
#set MODEL = 6050g+4.34z+0.00abu6.3000.interpol
#set MODEL = 6050g+4.34z+0.00abu6.4000.interpol
#set MODEL = 6050g+4.34z+0.00abu6.5000.interpol
#set MODEL = 6050g+4.34z+0.00abu6.2250.interpol
#set MODEL = 6050g+4.34z+0.00abu6.2325.interpol
#set MODEL = 6050g+4.34z+0.00abu6.2400.interpol
#set MODEL = 6050g+4.34z+0.00abu6.2475.interpol
#set MODEL = 6050g+4.34z+0.00abu6.2500.interpol
#set MODEL = 6050g+4.34z+0.00abu6.2550.interpol
#set MODEL = 6050g+4.34z+0.00abu6.2625.interpol
#set MODEL = 6050g+4.34z+0.00abu6.2700.interpol
#set MODEL = 6050g+4.34z+0.00abu6.2750.interpol
#set MODEL = 6050g+4.34z+0.00abu6.2775.interpol
#set MODEL = 6050g+4.34z+0.00abu6.2850.interpol
#set MODEL = 6050g+4.34z+0.00abu6.2925.interpol
#set MODEL = 6050g+4.34z+0.00abu6.3250.interpol
#set MODEL = 6050g+4.34z+0.00abu6.3500.interpol
#set MODEL = 6050g+4.34z+0.00abu6.3750.interpol
#set MODEL = 6050g+4.34z+0.00abu6.2875.interpol
#set MODEL = 6050g+4.34z+0.00abu6.2900.interpol
#set MODEL = 6050g+4.34z+0.00abu6.2950.interpol
#set MODEL = 6050g+4.34z+0.00abu6.2975.interpol
#set MODEL = 6050g+4.34z+0.00abu6.3025.interpol
#set MODEL = 6050g+4.34z+0.00abu6.3050.interpol
#set MODEL = 6050g+4.34z+0.00abu6.3075.interpol
#set MODEL = 6050g+4.34z+0.00abu6.3100.interpol
#set MODEL = 6050g+4.34z+0.00abu6.2800.interpol
#set MODEL = 6050g+4.34z+0.00abu6.2805.interpol
#set MODEL = 6050g+4.34z+0.00abu6.2810.interpol
#set MODEL = 6050g+4.34z+0.00abu6.2815.interpol
#set MODEL = 6050g+4.34z+0.00abu6.2820.interpol
#set MODEL = 6050g+4.34z+0.00abu6.2825.interpol
#set MODEL = 6050g+4.34z+0.00abu6.2830.interpol
#set MODEL = 6050g+4.34z+0.00abu6.2835.interpol
#set MODEL = 6050g+4.34z+0.00abu6.2840.interpol

#set MODEL = 6050g+4.34z+0.00abu6.2845.interpol
#set MODEL = 6050g+4.34z+0.00abu6.2850.interpol
#set MODEL = 6050g+4.34z+0.00abu6.2855.interpol
#set MODEL = 6050g+4.34z+0.00abu6.2860.interpol
#set MODEL = 6050g+4.34z+0.00abu6.2865.interpol
#set MODEL = 6050g+4.34z+0.00abu6.2870.interpol
#set MODEL = 6050g+4.34z+0.00abu6.2875.interpol
#set MODEL = 6050g+4.34z+0.00abu6.2880.interpol
#set MODEL = 6050g+4.34z+0.00abu6.2885.interpol
#set MODEL = 6050g+4.34z+0.00abu6.2890.interpol
#set MODEL = 6050g+4.34z+0.00abu6.2895.interpol
#set MODEL = 6050g+4.34z+0.00abu6.2900.interpol
#set MODEL = 6050g+4.34z+0.00abu6.2905.interpol
#set MODEL = 6050g+4.34z+0.00abu6.2910.interpol
#set MODEL = 6050g+4.34z+0.00abu6.2915.interpol
#set MODEL = 6050g+4.34z+0.00abu6.2920.interpol
#set MODEL = 6050g+4.34z+0.00abu6.2925.interpol
#set MODEL = 6050g+4.34z+0.00abu6.2930.interpol
#set MODEL = 6050g+4.34z+0.00abu6.2935.interpol
#set MODEL = 6050g+4.34z+0.00abu6.2940.interpol

#set MODEL = 6050g+4.34z+0.00abu6.2945.interpol

#6.2550 6.2575 6.2600 6.2625 6.2650 6.2675 6.2700 6.2725 6.2775 6.2800 6.2825 6.2850 6.2875


#Dany
#set MODEL = 4969g+4.51z+0.00abu6.0500.interpol
#set MODEL = 4969g+4.51z+0.00abu6.1000.interpol
#set MODEL = 4969g+4.51z+0.00abu6.1500.interpol
#set MODEL = 4969g+4.51z+0.00abu6.1700.interpol
#set MODEL = 4969g+4.51z+0.00abu6.2000.interpol
#set MODEL = 4969g+4.51z+0.00abu6.2500.interpol
#set MODEL = 4969g+4.51z+0.00abu6.3000.interpol

#set MODEL = 4969g+4.51z-0.07abu6.1500.interpol

#set MODEL = 4969g+4.51z-0.07abu6.0000.interpol
#set MODEL = 4969g+4.51z-0.07abu6.0100.interpol
#set MODEL = 4969g+4.51z-0.07abu6.0200.interpol
#set MODEL = 4969g+4.51z-0.07abu6.0299.interpol
#set MODEL = 4969g+4.51z-0.07abu6.0300.interpol
#set MODEL = 4969g+4.51z-0.07abu6.0301.interpol
#set MODEL = 4969g+4.51z-0.07abu6.0400.interpol
#set MODEL = 4969g+4.51z-0.07abu6.0500.interpol
#set MODEL = 4969g+4.51z-0.07abu6.0600.interpol
#set MODEL = 4969g+4.51z-0.07abu6.0700.interpol
#set MODEL = 4969g+4.51z-0.07abu6.0800.interpol
#set MODEL = 4969g+4.51z-0.07abu6.0900.interpol
#set MODEL = 4969g+4.51z-0.07abu6.1000.interpol
#set MODEL = 4969g+4.51z-0.07abu6.0575.interpol
#set MODEL = 4969g+4.51z-0.07abu6.0521.interpol
#set MODEL = 4969g+4.51z-0.07abu6.0522.interpol
#set MODEL = 4969g+4.51z-0.07abu6.0523.interpol
#set MODEL = 4969g+4.51z-0.07abu6.0524.interpol
#set MODEL = 4969g+4.51z-0.07abu6.0526.interpol
#set MODEL = 4969g+4.51z-0.07abu6.0527.interpol
#set MODEL = 4969g+4.51z-0.07abu6.0528.interpol
set MODEL = 4969g+4.51z-0.07abu6.0529.interpol



#set MODEL = 4919g+4.51z-0.07abu5.5000.interpol
#set MODEL = 4919g+4.51z-0.07abu5.6000.interpol
#set MODEL = 4919g+4.51z-0.07abu5.7000.interpol
#set MODEL = 4919g+4.51z-0.07abu5.8000.interpol
#set MODEL = 4919g+4.51z-0.07abu5.9000.interpol
#set MODEL = 4919g+4.51z-0.07abu5.9500.interpol
#set MODEL = 4919g+4.51z-0.07abu5.9790.interpol
#set MODEL = 4919g+4.51z-0.07abu5.9795.interpol
#set MODEL = 4919g+4.51z-0.07abu5.9785.interpol

#set MODEL = 4919g+4.51z-0.07abu5.9786.interpol
#set MODEL = 4919g+4.51z-0.07abu5.9787.interpol
#set MODEL = 4919g+4.51z-0.07abu5.9788.interpol
#set MODEL = 4919g+4.51z-0.07abu5.9789.interpol
# set MODEL = 4919g+4.51z-0.07abu5.9791.interpol
#set MODEL = 4919g+4.51z-0.07abu5.9792.interpol
#set MODEL = 4919g+4.51z-0.07abu5.9793.interpol
#set MODEL = 4919g+4.51z-0.07abu5.9794.interpol



#set MODEL = 4919g+4.51z-0.07abu5.9900.interpol
#set MODEL = 4919g+4.51z-0.07abu5.9910.interpol
# set MODEL = 4919g+4.51z-0.07abu5.9920.interpol
# set MODEL = 4919g+4.51z-0.07abu5.9930.interpol
#set MODEL = 4919g+4.51z-0.07abu5.9940.interpol
#set MODEL = 4919g+4.51z-0.07abu5.9950.interpol
#set MODEL = 4919g+4.51z-0.07abu5.9960.interpol
#set MODEL = 4919g+4.51z-0.07abu5.9970.interpol
#set MODEL = 4919g+4.51z-0.07abu5.9980.interpol
#set MODEL = 4919g+4.51z-0.07abu5.9987.interpol
#set MODEL = 4919g+4.51z-0.07abu5.9988.interpol
#set MODEL = 4919g+4.51z-0.07abu5.9989.interpol

#set MODEL = 4919g+4.51z-0.07abu5.9990.interpol

#set MODEL = 4919g+4.51z-0.07abu6.0010.interpol
#set MODEL = 4919g+4.51z-0.07abu6.0020.interpol
#set MODEL = 4919g+4.51z-0.07abu6.0030.interpol
#set MODEL = 4919g+4.51z-0.07abu6.0040.interpol
#set MODEL = 4919g+4.51z-0.07abu6.0050.interpol


#set MODEL = 4919g+4.51z-0.07abu6.0000.interpol
#set MODEL = 4919g+4.51z-0.07abu6.0100.interpol
#set MODEL = 4919g+4.51z-0.07abu6.0200.interpol
#set MODEL = 4919g+4.51z-0.07abu6.0299.interpol
#set MODEL = 4919g+4.51z-0.07abu6.0300.interpol
#set MODEL = 4919g+4.51z-0.07abu6.0301.interpol
#set MODEL = 4919g+4.51z-0.07abu6.0400.interpol
#set MODEL = 4919g+4.51z-0.07abu6.0500.interpol
#set MODEL = 4919g+4.51z-0.07abu6.0600.interpol
#set MODEL = 4919g+4.51z-0.07abu6.0700.interpol
#set MODEL = 4919g+4.51z-0.07abu6.0800.interpol
#set MODEL = 4919g+4.51z-0.07abu6.0900.interpol
#set MODEL = 4919g+4.51z-0.07abu6.1000.interpol

#set MODEL = 5019g+4.51z-0.07abu6.0000.interpol
#set MODEL = 5019g+4.51z-0.07abu6.0100.interpol
#set MODEL = 5019g+4.51z-0.07abu6.0200.interpol
#set MODEL = 5019g+4.51z-0.07abu6.0300.interpol
#set MODEL = 5019g+4.51z-0.07abu6.0400.interpol
#set MODEL = 5019g+4.51z-0.07abu6.0500.interpol
#set MODEL = 5019g+4.51z-0.07abu6.0600.interpol
#set MODEL = 5019g+4.51z-0.07abu6.0700.interpol
#set MODEL = 5019g+4.51z-0.07abu6.0800.interpol
#set MODEL = 5019g+4.51z-0.07abu6.0900.interpol
#set MODEL = 5019g+4.51z-0.07abu6.1000.interpol
#set MODEL = 5019g+4.51z-0.07abu6.1100.interpol
#set MODEL = 5019g+4.51z-0.07abu6.1200.interpol

#set MODEL = 5019g+4.51z-0.07abu6.1258.interpol
#set MODEL = 5019g+4.51z-0.07abu6.1259.interpol

#set MODEL = 5019g+4.51z-0.07abu6.1250.interpol
#set MODEL = 5019g+4.51z-0.07abu6.1260.interpol
#set MODEL = 5019g+4.51z-0.07abu6.1261.interpol
#set MODEL = 5019g+4.51z-0.07abu6.1262.interpol
#set MODEL = 5019g+4.51z-0.07abu6.1263.interpol
#set MODEL = 5019g+4.51z-0.07abu6.1264.interpol
#set MODEL = 5019g+4.51z-0.07abu6.1265.interpol
#set MODEL = 5019g+4.51z-0.07abu6.1266.interpol
#set MODEL = 5019g+4.51z-0.07abu6.1267.interpol
#set MODEL = 5019g+4.51z-0.07abu6.1268.interpol
#set MODEL = 5019g+4.51z-0.07abu6.1269.interpol

#set MODEL = 5019g+4.51z-0.07abu6.1270.interpol
#set MODEL = 5019g+4.51z-0.07abu6.1271.interpol
#set MODEL = 5019g+4.51z-0.07abu6.1272.interpol
#set MODEL = 5019g+4.51z-0.07abu6.1273.interpol
#set MODEL = 5019g+4.51z-0.07abu6.1274.interpol
#set MODEL = 5019g+4.51z-0.07abu6.1275.interpol

#set MODEL = 5019g+4.51z-0.07abu6.1280.interpol


#set MODEL = 5019g+4.51z-0.07abu6.1290.interpol
#set MODEL = 5019g+4.51z-0.07abu6.1291.interpol
#set MODEL = 5019g+4.51z-0.07abu6.1292.interpol
#set MODEL = 5019g+4.51z-0.07abu6.1293.interpol
#set MODEL = 5019g+4.51z-0.07abu6.1294.interpol
#set MODEL = 5019g+4.51z-0.07abu6.1295.interpol
#set MODEL = 5019g+4.51z-0.07abu6.1296.interpol
#set MODEL = 5019g+4.51z-0.07abu6.1297.interpol
#set MODEL = 5019g+4.51z-0.07abu6.1298.interpol
#set MODEL = 5019g+4.51z-0.07abu6.1299.interpol

#set MODEL = 5019g+4.51z-0.07abu6.1300.interpol

#set MODEL = 5019g+4.51z-0.07abu6.1301.interpol
#set MODEL = 5019g+4.51z-0.07abu6.1302.interpol
#set MODEL = 5019g+4.51z-0.07abu6.1303.interpol
#set MODEL = 5019g+4.51z-0.07abu6.1304.interpol
#set MODEL = 5019g+4.51z-0.07abu6.1305.interpol
#set MODEL = 5019g+4.51z-0.07abu6.1306.interpol
#set MODEL = 5019g+4.51z-0.07abu6.1307.interpol
#set MODEL = 5019g+4.51z-0.07abu6.1308.interpol
#set MODEL = 5019g+4.51z-0.07abu6.1309.interpol
#set MODEL = 5019g+4.51z-0.07abu6.1310.interpol

#set MODEL = 5019g+4.51z-0.07abu6.1400.interpol
#set MODEL = 5019g+4.51z-0.07abu6.1500.interpol


# WASP20
#set MODEL = 5940g+4.231z+0.00abu6.1700.interpol
#set MODEL = 5940g+4.231z+0.00abu6.1000.interpol
#set MODEL = 5940g+4.231z+0.00abu6.1500.interpol
#set MODEL = 5940g+4.231z+0.00abu6.2000.interpol
#set MODEL = 5940g+4.231z+0.00abu6.2500.interpol
#set MODEL = 5940g+4.231z+0.00abu6.3000.interpol

# WASP31
#set MODEL = 6302g+4.310z-0.08abu5.9999.interpol

#set MODEL = 6302g+4.310z-0.08abu6.2200.interpol
#set MODEL = 6302g+4.310z-0.08abu6.0000.interpol
#set MODEL = 6302g+4.310z-0.08abu11.6000.interpol
#set MODEL = 6404g+4.310z-0.08abu11.6000.interpol


# Beta pic

#set MODEL = 8000g+4.15z+0.00abu6.3100.interpol

#set MODEL = 8000g+4.15z+0.00abu7.5300.interpol



set Naabu = `echo $MODEL | awk -F 'abu' '{print substr($2, 1, 6)}'`
#set Habu = `echo $MODEL | awk -F 'abu' '{print substr($2, 1, 6)}'`
#set Caabu = `echo $MODEL | awk -F 'abu' '{print substr($2, 1, 6)}'`
#set Mgabu = `echo $MODEL | awk -F 'abu' '{print substr($2, 1, 6)}'`

 

#set Caabu = 6.34
set Feabu = 7.50

#HD189733
set FeIabu = 7.265#7.45
set NiIabu = 5.985
set TiIabu = 4.76
set CrIabu = 6.0

#WASP31
#set FeIabu = 7.200 #7.45
#set NiIabu = 6.050 #5.985
#set TiIabu = 4.76
#set CrIabu = 6.0

set lam_min    = '5880.'
set lam_max    = '5905.'
#set lam_min    = '3900.'
#set lam_max    = '4000.'
#set lam_min    = '2780.'
#set lam_max    = '2820.'
#set lam_min    = '5882.'
#set lam_max    = '5902.'
#set lam_min    = '6520.'
#set lam_max    = '6600.'
#set lam_min    = '10820.'
#set lam_max    = '10840.'

#set lam_min    = '5300.'
#set lam_max    = '13200.'

set deltalam   = '0.005'
set METALLIC   = '     -0.07' #-0.07' #-0.08'
set TURBVEL = '1.0'

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
#foreach MU (1.0)
########################################################################
set SUFFIX     = _${lam_min}-${lam_max}_xit${TURBVEL}-NLTE-windows.spec
set result     = ${MODEL}${SUFFIX}

time /home/wdethier/Desktop/Turbospectrum_NLTE/exec-ifx/bsyn_lu <<EOF
###########
# Use NLTE if true. Source function is computed with departure coefficients 
# from departure coefficient file for the atom in model atom file, if they 
# are provided. 
#
'NLTE :'          '.true.'
#'NLTE :'          '.false.'
###########
# file containing NLTE information (species and associated files)
#
'NLTEINFOFILE:'  'DATA/SPECIES_LTE_NLTE.dat'
#
###########
# if present these files will be used to compute the spectrum in a number of 
# windows given by SEGMENTSFILE. 
# Comment out if not needed
#
#'SEGMENTSFILE:'     '${dpath}/uves_giant_Fe-seg.txt'
#
# spectral resolution  to be used in these windows. 
# If not specified, a default value of 500000 is used
#
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
# 12.012 0.9
# 12.013 0.1
# to set 90% of 12C and 10% of 13C.
'METALLICITY:'    '${METALLIC}'
'ALPHA/Fe   :'    '0.00'
'HELIUM     :'    '0.00'
'R-PROCESS  :'    '0.00'
'S-PROCESS  :'    '0.00'
'INDIVIDUAL ABUNDANCES:'   '4'
11.000 $Naabu
22.000 $TiIabu
26.000 $FeIabu
28.000 $NiIabu
'ISOTOPES : ' '0'

###########
# line lists. First how many there are, and then the list of lists
#
'NFILES   :' '2'
linelists/nlte_ges_linelist_jmg04sep2023_I_II
DATA/Hlinedata
#linelists/nlte_theo_2780_2820_lines
#linelists/nlte_theo_3900_4000_lines

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


#'INDIVIDUAL ABUNDANCES:'   '1'
#1.000 $Habu
#11.000 $Naabu
# 12 Mg
# 20 Ca
#22.000 $TiIabu
#26.000 $FeIabu
#28.000 $NiIabu

