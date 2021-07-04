# Swift for Tensorflow

Swift is on scheduling becoming the next generation programming language for Tensorflow. Swift APIs for Tensorflow are now released in beta. However, the transient peroid from Python to Swift is still not easy for the data scientists or AI enginners, etc. Fortunately, Swift leverages the Python interoperability. Before we get started to use Python in Swift, let's take a look into the workflow of data scientistics or AI-related engineers. Because of the rapid development of Tensorflow or other deep learning frameworks, their APIs or interfaces are on common changed a lot while a new version released. The scientistics or engineers first create the virtual or seperated environment through `virtualenv`, `conda` or even `container`. These behaviors bring challenges while introduing Python to Swift.

In the following, we demonstarte how to leverage Python in a Swift runtime using XCode under a specific conda environment.

## Python Environment

```sh
# create a conda env
conda create --name swift4tensorflow python=3.6

# activate the env
conda activate swift4tensorflow
```

Byy default, the conda env would be at `/Users/$USER/anaconda3/envs/swift4tensorflow` or `/Users/$USER/miniconda/envs/swift4tensorflow` if using anaconda or miniconda.

## XCode Environment

Before you get started, please download the [Swift for TensorFlow toolchain](https://github.com/tensorflow/swift/blob/main/Installation.md) first. In Swift, using the library `PythonKit` to leverage Python.

```sh
# setup the Python environment first
export PYTHONHOME=/users/$USER/miniconda/envs/swift4tensorflow
export PYTHON_LIBRARY=/users/$USER/miniconda/envs/swift4tensorflow/lib/libpython3.6m.dylib
echo "PYTHON_LIBRARY: $PYTHON_LIBRARY"

# open the xcode under the environments
# this step is important for using Python in Swift
open -a xcode
```

## Tests

Now install a package in the conda environment for testing.

```sh
pip install --no-cache-dir -q numpy
```

In Swift, you can load the python package using the `PythonKit`.

```swift
//
//  main.swift
//  Tensorflow Example
//
//  Created by Jiankai Wang on 2020/11.
//

import Foundation
import TensorFlow
import PythonKit

print(Python.version)

let np = Python.import("numpy")
print(np)
```