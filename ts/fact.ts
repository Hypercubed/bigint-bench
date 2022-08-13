function fact(n: bigint): bigint {
  return (n < 2n) ? 1n : n * fact(n - 1n);
}

console.log(fact(1000n));