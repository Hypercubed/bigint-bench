use num_bigint::{BigInt, Sign};

fn fact (n: BigInt) -> BigInt {
    match n.sign() {
        Sign::NoSign => BigInt::from(1),
        _ => n.clone() * fact(n-1)
    }
}

fn main() {
  println!("{}", fact(BigInt::from(1000)));
}