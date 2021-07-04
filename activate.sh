#!/bin/bash

conda activate swift4tensorflow

export PYTHONHOME=/users/$USER/miniconda/envs/swift4tensorflow
echo "PYTHONHOME: $PYTHONHOME"

export PYTHON_LIBRARY=/users/$USER/miniconda/envs/swift4tensorflow/lib/libpython3.6m.dylib
echo "PYTHON_LIBRARY: $PYTHON_LIBRARY"

export PATH=/Library/Developer/Toolchains/swift-latest/usr/bin:"${PATH}"
echo "PATH: $PATH"

open -a xcode
