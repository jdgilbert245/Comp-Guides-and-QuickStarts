# Conda Quickstart HowTo
Quickstart guide for using conda with myriad at UCL. Example is for rnaseq but may wish to change.

## Conda
Add some conda info

## Setup
Conda is available on myriad: `module load python/miniconda3`, then run `source $UCL_CONDA_PATH/etc/profile.d/conda.sh`.

## Create Environment
Create a Conda environment with all necessary tools and dependencies:

```
conda create -n rnaseq_env
conda activate rnaseq_env
```

