#!/bin/bash

nvidia-smi
source ~/miniconda3/bin/activate hyena-dna
echo hyena-dna activated

python bpe-notebook.py

echo Script Done! Logging out
logout

# To run use this command:
# sbatch --partition=gpus --nodelist=gpu[2001] -t 6:00:00 --gres=gpu:1 run-hyena.sh

# To run a script (in general) it's 'sbatch [optional slurm modifers] script-name.sh'

# Here's an explanation of the above slurm modifiers:
# --partition=gpus  (use gpus)
# --nodelist=gpu[2001] (use gpu2001 cluster)
# -t 6:00:00 (6 hours before terminating)
# --gres=gpu:1 (use 1 gpu)

# More stuff
# After launching a job, I recommend running 'squeue' to check if things are running appropriately