#!/bin/bash

#PBS -l nodes=1:ppn=8,walltime=4:00:00
#PBS -q old
#PBS -N prepareForCluster

cd /home/Estancliffe/decoID/HPC_scripts/

export PATH=/export/Anaconda3-5.2.0/bin:$PATH
source activate py3


dataDir=$1 #/scratch/Estancliffe/Asp-Mal_1uM_3Da.mzML
numFiles=$2
peakFile=$3
libFile=$4
python prepareForCluster.py $dataDir $numFiles 1 $peakFile $libFile

