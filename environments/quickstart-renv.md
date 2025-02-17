# Renv Quickstart Guide
Quick start guide to using the R environment manager `renv`.

## renv
By default, R installs all packages to a single folder. This can lead to conflicts among dependencies and makes it hard for others to reproduce the exact set of packages you have installed. Renv creates reproducible environments for R projects (similar to [conda](https://github.com/jdgilbert245/general-info/blob/main/environments/quickstart-conda.md)).

This guide demonstrates how to set up a renv for your project (based on [this guide](https://rstudio.github.io/renv/articles/renv.html).

## Usage
### Definitions
A library is a directory containing installed packages.
A repository is a source of packages; install.packages() gets a package from a repository (usually somewhere on the Internet) and puts it in a library (a directory on your computer). 

### Getting Started
To convert a project to use renv, call `renv::init()`. It adds three new files and directories to your project:
- The project library, `renv/library`, is a library that contains all packages currently used by your project
- The lockfile, `renv.lock`, records enough metadata about every package that it can be re-installed on a new machine.
- A project R profile,`.Rprofile`. This file is run automatically every time you start R (in that project), and renv uses it to configure your R session to use the project library.

#### Installing Packages
you can continue to use familiar tools like `install.packages()`. But you can also use `renv::install()`: it’s a little less typing and can install packages from GitHub, Bioconductor, and more, not just CRAN.

#### Reproducing Environments
The next important pair of tools is `renv::snapshot()` and `renv::restore()`. `snapshot()` updates the lockfile with metadata about the currently-used packages in the project library. This is useful because you can then share the lockfile and other people or other computers can easily reproduce your current environment by running `restore()`, which uses the metadata from the lockfile to install exactly the same version of every package. This pair of functions gives you the benefits of reproducibility and portability: you are now tracking exactly which package versions you have installed so you can recreate them on other machines.

__________

More info is available on the v useful and clear [guide](https://rstudio.github.io/renv/articles/renv.html).
