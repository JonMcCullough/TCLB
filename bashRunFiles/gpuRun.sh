#!/bin/bash -l
sbatch <<EOT
#!/bin/bash -l
#SBATCH --job-name=$3	
#SBATCH --partition=gpu

#SBATCH --output=my/logs/out.%6j
#SBATCH --error=my/logs/err.%6j

#SBATCH -w, --nodelist=c4130
#SBATCH --ntasks=7
#SBATCH --ntasks-per-node=7
#SBATCH --gres=gpu:2

#SBATCH --time=10:00:00

#SBATCH --mail-user=j.mccullough@uq.edu.au
#SBATCH --mail-type=END

module load mpi/openmpi-x86_64

echo "Job: $SLURM_JOB_NAME"
echo "jID: $SLURM_JOB_ID"
echo "Nodes:"
echo $SLURM_NODELIST
nvidia-smi

mpirun -np 2 -x LD_LIBRARY_PATH -x PATH -x PYTHONPATH ${1} ${2} 


wait

EOT
