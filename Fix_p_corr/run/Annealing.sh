#!/bin/bash
#SBATCH -N 1
#SBATCH --ntasks 20
#SBATCH --job-name test_Annealing-25
#SBATCH -p SIMU
#SBATCH --time 05:14:00
#SBATCH --output test_Annealing.out

module purge

#module load openmpi-mpirun-gcc-8/
../../../../../namd2 +p 20 +devices 2,3 Annealing.conf > Annealing.out

