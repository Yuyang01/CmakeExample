//
//  main.cpp
// 
//  Created by Yuyang Wang on 15/01/2020.
//  Copyright © 2020 Yuyang Wang. All rights reserved.
//
#include <torch/torch.h>
#include <iostream>

int main() {
  torch::Tensor tensor = torch::rand({2, 3});
  std::cout << tensor << std::endl;
}