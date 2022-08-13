package main

import (
	"fmt"
	"math/big"
)

func main() {
	fmt.Println(fact(big.NewInt(1000)))
}

var ONE = big.NewInt(1)

func fact(n *big.Int) *big.Int {
	if n.Sign() == 0 {
		return ONE
	} else {
		var z big.Int
		var r big.Int
		return z.Mul(n, fact(r.Sub(n, ONE)))
	}
}
