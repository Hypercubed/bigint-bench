#include <iostream>
#include <boost/multiprecision/gmp.hpp>
#include <string>
 
namespace mp = boost::multiprecision;

int main(int argc, char const *argv[])
{
    std::cout
      << pow(mp::mpz_int(5), pow(4, pow(3, 2))) % pow(mp::mpz_int(10), 20)
      << std::endl;
    return 0;
}