#!/bin/bash

# Example slurm script to train a PyTorch deep learning model on Yen GPU

#SBATCH -J finBERT-train               # Job name
#SBATCH -p gpu                         # Partition (queue) to submit to
#SBATCH -c 10                          # Number of CPU cores 
#SBATCH -N 1                           # Request one node 
#SBATCH -t 1:00:00                          # Max job time: 1 day 
#SBATCH -G 1                           # Max GPUs per user: 2
#SBATCH -o finBERT-train.out           # Output file
#SBATCH --mail-type=ALL                # Email notifications 
#SBATCH --mail-user=your_email@stanford.edu

# Load PyTorch module
ml pytorch                             

# Execute the Python script with multiple workers (for data loading)
srun python finBERT-train.py ${SLURM_CPUS_PER_TASK}
