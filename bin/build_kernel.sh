#!/bin/sh

#script to run a build on a new kernel

echo"***Loading MenuConfig Interface***"
#make menuconfig

echo"***Buildig Kernel***"
make -j 3

echo"***Install Modules***"
make modules_install

echo"***Installing***"
make install


alias b_kern="build_kernel.sh"
