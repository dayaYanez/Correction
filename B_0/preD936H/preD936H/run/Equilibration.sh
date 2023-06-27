#!/bin/bash
#SBATCH -N 1
#SBATCH --ntasks 20
#SBATCH --job-name Equilibration-preD936H
#SBATCH -p SIMU
#SBATCH --time 05:14:00
#SBATCH --output Equilibration-preD936H.out

module purge

#module load openmpi-mpirun-gcc-8/
../../../../../../namd2 +p 20 +devices 0,1 Equilibration.conf > Equilibration.out

