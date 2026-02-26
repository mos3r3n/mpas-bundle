source /opt/cray/pe/modules/3.2.11.6/init/sh

# Check if conda is installed. If it is, deactivate it.
if command -v conda >/dev/null 2>&1; then
    conda deactivate
fi

# Basic modules
unset LOADEDMODULES
unset _LMFILES_
module purge
module load craype-x86-milan
module load craype/2.7.15
module load libfabric/1.11.0.4.125
module load cray-pals/1.1.6
module load gcc/11.2.0
module load cray-mpich/8.1.15

# spack-stack modules
module use /home/project/13004327/software_service/spack-stack/1.8-mos3r3n/envs/mpas-bundle/install/modulefiles/Core

# spack basic modules
module load stack-gcc/11.2.0
module load stack-cray-mpich/8.1.15
module load stack-python/3.11.7

module load ecmwf-atlas
module load gptl
module load gsl-lite
module load netcdf-cxx4
module load parallelio
module load jedi-cmake
module load ecbuild
module load py-pycodestyle
module load udunits
module load nccmp

export CC=/opt/cray/pe/gcc/11.2.0/bin/gcc
export FC=/opt/cray/pe/gcc/11.2.0/bin/gfortran
export CXX=/opt/cray/pe/gcc/11.2.0/bin/g++
