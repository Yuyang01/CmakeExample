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
        
    return 0;
}