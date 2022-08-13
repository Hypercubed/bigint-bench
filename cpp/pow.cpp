#include <iostream>
#include <boost/multiprecision/gmp.hpp>
#include <string>
 
using namespace boost::multiprecision;

const auto TWO = mpz_int(2);

mpz_int ipow_internal(const mpz_int &base, const mpz_int &exp)
{
  if (exp == 0)
    return 1;
  if (exp == 1)
    return base;

  auto pow = ipow_internal(base, exp / TWO);
  pow = pow * pow;
  return (exp % TWO == 0) ? pow : pow * base;
}

mpz_int ipow(const mpz_int &base, const mpz_int &exp)
{
  if (exp < 0)
  {
    if (base == 0)
      throw std::logic_error("Cannot divide by zero");
    return abs(base) == 1 ? base : 0;
  }
  if (exp == 0 || base == 1)
  {
    if (base == 0)
      throw std::logic_error("Zero cannot be raised to zero");
    return 1;
  }

  return ipow_internal(base, exp);
}
 
int main(int argc, char const *argv[])
{
    std::cout
      << ipow(mpz_int(5), ipow(mpz_int(4), ipow(mpz_int(3), mpz_int(2)))) % ipow(mpz_int(10), mpz_int(20))
      << std::endl;
    return 0;
}