# Conda Quickstart HowTo
Quickstart guide for using conda with myriad at UCL. Example is for rnaseq but may wish to change.

More info on [conda website](https://anaconda.org/anaconda/conda).

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

### Add channels
Channels are the locations where packages are stored. They serve as the base for hosting and managing packages. Conda packages are downloaded from remote channels. Specifying channels helps Conda know where to look for specific software versions and dependencies.

```
conda config --add channels defaults
conda config --add channels bioconda
conda config --add channels conda-forge
```

## Install packages

`conda install fastqc multiqc`

## Export the Environment
An important step is recording all the tools and versions downloaded to the environment. This ensures reproducibility for other future users.

`conda env export --no-builds > rnaseq_env.yaml`

### Recreating an environment from an environment yaml
Anyone can recreate a conda environment if they have the environment yaml file:

`conda env create -f environment.yaml`

___

By following these steps, you will avoid painful experiences downloading packages, will only need to load one package and environment (i.e. conda and conda-env), and will have a completely reproducible list of packages and their versions. Good.

This can be run automatically, e.g. when you make a git commit, to ensure yaml always up to date. Might be slow though. Better ways probably available.
