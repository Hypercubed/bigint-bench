import { BigInt } from 'as-bigint/assembly/BigInt';

function fact(n: BigInt): BigInt {
  if (n.lt(2)) return BigInt.ONE;
  return n.mul(fact(n.sub(BigInt.ONE)));
}

console.log(`${fact(BigInt.from(1000))}`);