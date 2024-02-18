import { MpZ } from '@hypercubed/as-mpz/assembly/index';

const p = 4**3**2;
const m = MpZ.from(10).pow(20);
console.log(`${MpZ.from(5).pow(p).mod(m)}`);
