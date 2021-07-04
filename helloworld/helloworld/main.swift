//
//  main.swift
//  helloworld
//
//  Created by Jiankai Wang on 2020/11/19.
//

import Foundation
import TensorFlow
import PythonKit

print("Hello world, Swift for Tensorflow!")
print(Python.version)

let np = Python.import("numpy")
let mpt = Python.import("matplotlib")
print(np.__version__)
print(mpt.__version__)

print(_Raw.mul(Tensor([2.0, 3.0]), Tensor([5.0, 6.0])))
