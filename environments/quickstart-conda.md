# Conda Quickstart Guide
Quickstart guide for using conda or mamba with myriad at UCL. Example is for rnaseq but may wish to change.

More info on [conda website](https://anaconda.org/anaconda/conda) and [mamba](https://github.com/mamba-org/mamba).

When you're working on programming projects, managing different software libraries and tools can get complicated. This is where environment managers like Conda or mamba come in handy.

Conda is an open-source environment management tool that makes it easy to manage different versions of Python, R, or other programming languages, along with the libraries and packages your project depends on. Mamba is a fast, efficient, and fully compatible alternative to Conda for managing and installing packages in Python environments. Without package managers, you might run into issues like:

- **Dependency conflicts**: One project requires a specific version of a library, while another project needs a different version. If both projects are on the same system, this can cause conflicts
- **Version control problems**: Updating libraries or tools globally on your machine might break older projects that rely on previous versions.
- **Reproducibility challenges**: When sharing your project with others, ensuring that they have the exact environment setup can be difficult.

Conda/mamba solve these problems by creating isolated environments, where each project can have its own set of libraries and dependencies without interfering with other projects. You can think of an environment as a clean workspace for your project. You can create, switch between, and delete environments easily with a few commands.

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

Some libraries are OS-specific so you might get an error if trying to re-create an environment from a yaml written on a different OS. To avoid this, keep OS-specific yaml files.

You can use this to set up an environment locally and move that to HPCs e.g. myriad. Beware that HPCs often use linux operating systems and this might cause problems when recreating environments originally created on windows or mac operating systems.
___

By following these steps, you will avoid painful experiences downloading packages, will only need to load one package and environment (i.e. conda and conda-env), and will have a completely reproducible list of packages and their versions. Good.

This can be run automatically, e.g. when you make a git commit, to ensure yaml always up to date. Might be slow though. Better ways probably available.

## Mamba
For most scenarios, Mamba offers significant advantages in speed and reliability.

Mamba syntax is apparently identical to conda syntax and can access existing conda data. So you can use `mamba activate myenv` to activate conda envs.

Install not straightforward on cluster. Need to figure out.

## Conda on Managed Windows Machines
I had problems using conda on my managed Windows machine. I installed miniconda following the instructions on the [website](https://docs.anaconda.com/miniconda/install/#quick-command-line-install) (which required IT to get on a call and give admin permission temporarily).

First, the location of conda was not automatically added to path. I added the path to a ~/.bashrc.sh [file](https://www.digitalocean.com/community/tutorials/bashrc-file-in-linux).

Then, I could create an environment as above, but when I tried to activate, it kept telling me to run `conda init`. This is a step to set up conda on your machine but was not running properly. Eventually, (at an ARC drop-in) we figured out that I needed to run `source activate`. This at least let me activate environments.

## Conda for python notebooks
To use environments for notebooks, you need to create the environment and install packages as normal. Then, in a terminal/command line/VSC session, activate the environment and run `jupyter notebook`. This will open a notebook session in the environment and will have access to the installed libraries.
