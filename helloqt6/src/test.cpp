#include "test.h"
#include <iostream>
using namespace std;

Test::Test()
{
  cout << "test ctor" << endl;
}

Test::~Test()
{
  cout << "test ~ctor" << endl;
}

void Test::swap(int &a, int &b)
{
  int temp = a;
  a = b;
  b = temp;
}
