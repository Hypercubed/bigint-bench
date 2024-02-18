# Search for the fastest BigInt implementation

## Introduction

This is a benchmark for the fastest BigInt implementation across different languages.

## Results (baseline)

To measure the base performance of each implementation, we use a simple hello world program.

| Command | Mean [µs] | Min [µs] | Max [µs] | Relative |
|:---|---:|---:|---:|---:|
| `./build/hello-zig` | 791.7 ± 1140.5 | 466.9 | 20914.6 | 1.00 |
| `./build/hello-cpp` | 1714.7 ± 1868.7 | 945.0 | 16925.8 | 2.17 ± 3.91 |
| `./build/hello-rust` | 1011.1 ± 1305.4 | 595.1 | 22530.9 | 1.28 ± 2.47 |
| `./build/hello-go` | 1493.1 ± 1223.3 | 979.5 | 22590.2 | 1.89 ± 3.13 |
| `./build/hello-ghc` | 2655.8 ± 2287.8 | 1429.2 | 20367.4 | 3.35 ± 5.63 |
| `./build/hello-deno` | 45458.2 ± 23679.5 | 23093.6 | 119919.4 | 57.42 ± 87.96 |
| `./build/hello-racket` | 185962.8 ± 106531.2 | 96774.6 | 341701.3 | 234.90 ± 364.17 |
| `./build/hello-dart.exe` | 5588.4 ± 2321.1 | 3092.5 | 21139.2 | 7.06 ± 10.58 |
| `wasmtime ./build/hello.wasm` | 7242.5 ± 3257.9 | 4002.7 | 25698.3 | 9.15 ± 13.81 |
| `iwasm ./build/hello.wasm` | 30506.9 ± 9105.5 | 21498.0 | 71036.6 | 38.54 ± 56.69 |
| `wasmer run ./build/hello.wasm` | 15727.4 ± 7494.5 | 9229.7 | 49290.6 | 19.87 ± 30.14 |
| `bc ./bc/hello.bc` | 1531.1 ± 1850.7 | 764.9 | 25877.1 | 1.93 ± 3.64 |
| `bun ./js/hello.js` | 18674.3 ± 10256.9 | 13343.9 | 67275.6 | 23.59 ± 36.37 |
| `bun ./ts/hello.ts` | 25327.9 ± 14138.0 | 12421.6 | 76411.5 | 31.99 ± 49.43 |
| `deno run ./js/hello.js` | 49946.2 ± 24488.8 | 24360.6 | 115079.7 | 63.09 ± 96.01 |
| `deno run ./ts/hello.ts` | 42473.9 ± 21835.9 | 25569.7 | 97750.8 | 53.65 ± 82.06 |
| `node ./js/hello.js` | 44685.1 ± 20937.0 | 22803.2 | 88331.7 | 56.44 ± 85.51 |
| `tsx ./ts/hello.ts` | 386643.2 ± 184697.5 | 212382.2 | 711960.2 | 488.39 ± 741.24 |
| `python3 ./python/hello.py` | 21966.0 ± 9984.4 | 9745.9 | 45903.2 | 27.75 ± 41.91 |
| `ruby ./ruby/hello.rb` | 83545.4 ± 45556.8 | 46888.0 | 184939.6 | 105.53 ± 162.55 |
| `racket ./racket/hello.rkt` | 195371.7 ± 100825.5 | 106502.9 | 344250.8 | 246.79 ± 377.64 |
| `elixir ./elixir/hello.exs` | 665073.8 ± 278371.1 | 311160.7 | 1043205.0 | 840.09 ± 1260.27 |

## Results (Pow)

Each implementation calculates and prints the value of `5^4^3^2 % (10^20)`.

| Command | Mean [ms] | Min [ms] | Max [ms] | Relative |
|:---|---:|---:|---:|---:|
| `./build/pow-cpp` | 4.5 ± 3.3 | 2.2 | 20.3 | 1.00 |
| `./build/pow-rust` | 9.8 ± 6.1 | 5.2 | 36.5 | 2.18 ± 2.10 |
| `./build/pow-deno` | 46.4 ± 24.3 | 25.2 | 112.0 | 10.35 ± 9.35 |
| `./build/pow-zig` | 312.1 ± 108.8 | 198.7 | 534.8 | 69.68 ± 56.75 |
| `wasmtime ./build/pow-mpz.wasm` | 286.7 ± 143.5 | 162.1 | 501.7 | 64.00 ± 56.97 |
| `bc ./bc/pow.bc` | 1668.9 ± 378.9 | 1184.4 | 2143.9 | 372.58 ± 287.04 |
| `bun ./js/pow.js` | 86.5 ± 41.7 | 47.5 | 166.9 | 19.31 ± 17.00 |
| `bun ./ts/pow.ts` | 92.5 ± 40.5 | 50.4 | 170.7 | 20.65 ± 17.68 |
| `deno run ./js/pow.js` | 48.1 ± 23.5 | 28.5 | 118.8 | 10.75 ± 9.50 |
| `deno run ./ts/pow.ts` | 51.2 ± 28.0 | 28.1 | 116.5 | 11.42 ± 10.48 |
| `node ./js/pow.js` | 55.2 ± 29.5 | 28.3 | 138.7 | 12.33 ± 11.21 |
| `tsx ./ts/pow.ts` | 388.1 ± 182.2 | 213.9 | 640.1 | 86.64 ± 75.65 |
| `ts-node ./ts/pow.ts` | 1460.6 ± 343.7 | 979.6 | 1964.9 | 326.08 ± 252.03 |
| `R -f ./r/pow.r -q` | 330.1 ± 139.5 | 177.5 | 499.2 | 73.69 ± 62.56 |
| `elixir ./elixir/pow.exs` | 941.1 ± 387.8 | 525.9 | 1561.9 | 210.10 ± 177.26 |

## Results (Factorial)

Each implementation calculates and prints the value of `1000!`.

| Command | Mean [ms] | Min [ms] | Max [ms] | Relative |
|:---|---:|---:|---:|---:|
| `./build/fact-cpp` | 2.5 ± 2.4 | 1.2 | 23.1 | 1.59 ± 2.31 |
| `./build/fact-rust` | 1.6 ± 1.7 | 0.9 | 18.2 | 1.00 |
| `./build/fact-go` | 2.5 ± 2.7 | 1.4 | 34.5 | 1.63 ± 2.49 |
| `./build/fact-ghc` | 3.0 ± 2.6 | 1.4 | 23.4 | 1.96 ± 2.72 |
| `./build/fact-deno` | 39.4 ± 20.8 | 23.3 | 83.9 | 25.39 ± 30.45 |
| `./build/fact-racket` | 163.4 ± 91.1 | 93.1 | 340.7 | 105.29 ± 127.70 |
| `./build/fact-dart.exe` | 7.9 ± 3.3 | 4.8 | 24.3 | 5.07 ± 5.87 |
| `./build/fact-zig` | 4.1 ± 3.3 | 2.2 | 23.6 | 2.67 ± 3.56 |
| `wasmtime ./build/fact-mpz.wasm` | 8.4 ± 4.6 | 5.4 | 39.3 | 5.39 ± 6.52 |
| `wasmtime ./build/fact-bigint.wasm` | 20.0 ± 6.6 | 13.4 | 51.7 | 12.90 ± 14.53 |
| `bc ./bc/fact.bc` | 10.7 ± 6.5 | 5.4 | 39.9 | 6.89 ± 8.51 |
| `bun ./js/fact.js` | 25.9 ± 13.6 | 14.6 | 69.6 | 16.69 ± 20.01 |
| `bun ./ts/fact.ts` | 22.7 ± 11.6 | 14.0 | 62.4 | 14.65 ± 17.46 |
| `deno run ./js/fact.js` | 46.0 ± 25.2 | 25.4 | 105.0 | 29.61 ± 35.80 |
| `deno run ./ts/fact.ts` | 40.3 ± 21.3 | 25.7 | 104.6 | 25.94 ± 31.12 |
| `node ./js/fact.js` | 41.0 ± 23.0 | 24.0 | 113.6 | 26.43 ± 32.10 |
| `tsx ./ts/fact.ts` | 366.1 ± 179.6 | 204.2 | 634.1 | 235.85 ± 279.18 |
| `python3 ./python/fact.py` | 12.1 ± 3.4 | 10.6 | 39.3 | 7.77 ± 8.65 |
| `ruby ./ruby/fact.rb` | 91.8 ± 56.2 | 47.7 | 199.6 | 59.14 ± 73.29 |
| `racket ./racket/fact.rkt` | 186.7 ± 109.2 | 108.4 | 364.4 | 120.26 ± 147.41 |
| `elixir ./elixir/fact.exs` | 625.6 ± 351.4 | 332.6 | 1263.2 | 403.06 ± 489.68 |

## Running your own benchmarks

Running your own benchmarks is not so easy.  You need to install a lot of languages and tools.  I recommend first installing [chomp](https://chompbuild.com/) then run `chomp bench:hello`.  You will likely get errors... You can then install the missing tools and try again.



