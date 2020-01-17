//
//  main.cpp
//  embedPy2Cpp
//
//  Created by Yuyang Wang on 15/01/2020.
//  Copyright © 2020 Yuyang Wang. All rights reserved.
//
#include <pybind11/embed.h>
#include <iostream>


namespace py = pybind11;
using namespace py::literals;

int main() {
    py::scoped_interpreter guard{};

    auto locals = py::dict("name"_a="World", "number"_a=42);
    py::exec(R"(
        message = "Hello, {name}! The answer is {number}".format(**locals())
    )", py::globals(), locals);

    auto message = locals["message"].cast<std::string>();
    std::cout << message<<"\n";
    py::exec(R"(
       from pathlib import Path
       import cv2
       import dlib
       import numpy as np
       import argparse
       from contextlib import contextmanager
       from tensorflow.keras.utils import get_file
       import time
       import pandas as pd
    )", py::globals(), locals);
    
        // Use Python to import python functions
    //https://pybind11.readthedocs.io/en/stable/advanced/pycpp/object.html#accessing-python-libraries-from-c
py::object pyScript = py::module::import("pyScript");
py::object pr = pyScript.attr("printme");
pr("dd");
        
    return 0;
}