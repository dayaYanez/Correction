#!/bin/bash
#SBATCH -N 1
#SBATCH --ntasks 20
#SBATCH --job-name Annealing-preD936Y
#SBATCH -p SIMU
#SBATCH --time 05:14:00
#SBATCH --output Annealing-preD936Y.out

module purge

#module load openmpi-mpirun-gcc-8/
../../../../../../namd2 +p 20 +devices 2,3 Annealing.conf > Annealing.out

