#!/bin/bash
#SBATCH --nodes=1
#SBATCH --cpus-per-task=1
#SBATCH --time=00:10:00
##SBATCH -p gpu -C gpup100 --gres=gpu:1
#SBATCH --output=srun.%j.out

cp -r helloTensor.py $TMPDIR
cd $TMPDIR

module load singularity

echo "You are:"
singularity exec $TENSORFLOW whoami
echo "get the sum from python script using tensor module"  
singularity exec $TENSORFLOW python helloTensor.py

cp -ru * $SLURM_SUBMIT_DIR
