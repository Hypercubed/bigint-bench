import { BigInt } from 'as-bigint/assembly/BigInt';

const p = 4**3**2;
const m = BigInt.from(10).pow(20);
console.log(`${BigInt.from(5).pow(p).mod(m)}`);
