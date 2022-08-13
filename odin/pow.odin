package main

import "core:fmt"
import "core:math/big"

main :: proc() {
  x := &big.Int{}
  big.atoi(x, "5");

  m := &big.Int{}
  big.pow(m, 10, 20)

  big.pow(x, x, int(big.pow(4, big.pow(3, 2))))
  big.int_mod(x, x, m)

  rr, _ := big.int_itoa_cstring(x)

	fmt.println(rr)
}