#!/bin/bash -l
sbatch <<EOT
#!/bin/bash -l
#SBATCH --job-name=$2	

#SBATCH --output=my/logs/out.%6j
#SBATCH --error=my/logs/err.%6j

#SBATCH --nodes=1
#SBATCH --cpus-per-task=8

#SBATCH --time=10:00:00

#SBATCH --mail-user=j.mccullough@uq.edu.au
#SBATCH --mail-type=END

module load mpi/openmpi-x86_64

echo "Job: $SLURM_JOB_NAME"
echo "jID: $SLURM_JOB_ID"
echo "Nodes:"
echo $SLURM_NODELIST

make ${1} -j 8 


wait

EOT
