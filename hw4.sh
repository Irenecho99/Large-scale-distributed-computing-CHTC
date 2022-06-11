#!/bin/bash

# untar the R installation
tar -xzf R361.tar.gz
tar -xzf packages.tar.gz
tar -xvzf $2.tgz

export PATH=$PWD/R/bin:$PATH
export RHOME=$PWD/R
export R_LIBS=$PWD/packages

Rscript hw4.R $1 $2

# tar -cvf res.tar *.csv
# tar -xvf res.tar -C res/
