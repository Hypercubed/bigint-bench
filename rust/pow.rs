extern crate num;
use num::bigint::BigInt;
// use num::FromPrimitive;
use num::pow::pow;
 
fn main() {
  println!("{}", pow(BigInt::from(5), pow(4, pow(3, 2))) % pow(BigInt::from(10), 20));
}