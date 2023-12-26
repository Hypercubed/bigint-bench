import { MpZ } from '@hypercubed/as-mpz';

function fact(n: MpZ): MpZ {
  if (n < MpZ.TWO) return MpZ.ONE;
  return n.mul(fact(n.sub(MpZ.ONE)));
}

console.log(`${fact(MpZ.from(1000))}`);