#include <boost/thread/thread.hpp>
#include <boost/thread/scoped_thread.hpp>
#include <boost/chrono.hpp>
#include<boost/bind.hpp>
#include <iostream>
 
using namespace std; 
using namespace boost;
int fun(int x,int y){return x+y;}

void wait(int seconds)
{
  boost::this_thread::sleep_for(boost::chrono::seconds{seconds});
}

void thread0()
{
  for (int i = 0; i < 5; ++i)
  {
    wait(1);
    std::cout << i << '\n';
  }
}


void test_bind(){
   int m=1;int n=2;
    cout<<boost::bind(fun,_1,_2)(m,n)<<endl; 
    
}

void hello_world() 
{
cout << "Hello world, I'm a thread!" << endl;
}
 
int main(int argc, char* argv[])
{
// 開始一條使用 "hello_world" function 的新執行緒
boost::thread my_thread(&hello_world);
// 等待執行緒完成工作
my_thread.join();
 
test_bind();

boost::scoped_thread<> t{boost::thread{thread0}};

return 0;
}


