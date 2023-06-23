#!/bin/bash
#SBATCH -N 1
#SBATCH --ntasks 20
#SBATCH --job-name test_Minimization-25
#SBATCH -p SIMU
#SBATCH --time 05:14:00
#SBATCH --output test_Minimization.out

module purge

#module load openmpi-mpirun-gcc-8/
../../../../../namd2 +p 20 +devices 2,3 Minimization.conf > Minimization.out

