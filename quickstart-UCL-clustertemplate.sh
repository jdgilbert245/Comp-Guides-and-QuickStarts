##### Template for job scripts to be used on UCL's HPCs
#!/bin/bash -l
#$ -l h_rt=1:0:0 # time
#$ -l mem=1G # mem
#$ -pe smp 1 # num cores
#$ -t 1-2 # array index
#$ -wd /home/ucsagil/Scratch/projects/training

##### QC Raw Data
### Perform fastqc on raw RNA Seq reads

##### Env
module load python/miniconda3
source $UCL_CONDA_PATH/etc/profile.d/conda.sh
conda activate YOUR_ENV

##### Arguments


##### Packages


##### Variables
Dir=
dataDir=${Dir}
repoDir=${Dir}

itNum=${SGE_TASK_ID}

##### Data


##### Script
