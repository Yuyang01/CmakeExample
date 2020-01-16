//
//  main.cpp
//  embedPy2Cpp
//
//  Created by Yuyang Wang on 15/01/2020.
//  Copyright © 2020 Yuyang Wang. All rights reserved.
//

#include <iostream>
#include <Python.h>

int main(int argc, const char * argv[]) {
    // insert code here...
    Py_Initialize();  
    PyRun_SimpleString("print('Test') ");  
    PyRun_SimpleString("print(str(3 + 5))"); 
    PyRun_SimpleString("import sys");
    printf("path: "); 
   PyRun_SimpleString("print(sys.path)");
   printf("version: ");
   PyRun_SimpleString("print (sys.version)");    
   PyRun_SimpleString("import tensorflow as tf");   
   PyRun_SimpleString("print(tf.__version__)");   
    
  Py_Exit(0); 
    return 0;
}
