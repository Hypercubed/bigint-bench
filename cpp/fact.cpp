#include <iostream>
#include <boost/multiprecision/gmp.hpp>

using namespace boost::multiprecision;

mpz_int factorial(mpz_int n) {
  return n == 0 ? mpz_int(1) : n * factorial(n - 1);
}

int main()
{
  std::cout << factorial(1000) << std::endl;
}
