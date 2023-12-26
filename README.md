# Search for the fastest BigInt implementation

## Introduction

This is a benchmark for the fastest BigInt implementation accross different languages.

## Results (baseline)

To measure the base performance of each implementation, we use a simple hello world program.

| Command | Mean [µs] | Min [µs] | Max [µs] | Relative |
|:---|---:|---:|---:|---:|
| `./build/hello-zig` | 614.0 ± 721.1 | 406.9 | 18313.7 | 1.00 |
| `./build/hello-cpp` | 1556.1 ± 1666.6 | 869.9 | 32914.3 | 2.53 ± 4.03 |
| `./build/hello-rust` | 842.5 ± 987.4 | 522.6 | 25689.0 | 1.37 ± 2.28 |
| `./build/hello-go` | 1488.0 ± 2063.6 | 836.4 | 43915.4 | 2.42 ± 4.40 |
| `./build/hello-ghc` | 1485.1 ± 1681.5 | 772.4 | 23389.0 | 2.42 ± 3.95 |
| `./build/hello-deno` | 40835.4 ± 21296.0 | 21228.8 | 96644.1 | 66.50 ± 85.45 |
| `./build/hello-racket` | 171665.8 ± 82889.3 | 89843.1 | 340639.2 | 279.57 ± 354.98 |
| `./build/hello-dart.exe` | 4534.0 ± 2435.4 | 2766.1 | 27023.9 | 7.38 ± 9.54 |
| `bc ./bc/hello.bc` | 1322.2 ± 1605.0 | 680.9 | 17207.3 | 2.15 ± 3.64 |
| `bun ./js/hello.js` | 21204.3 ± 11730.0 | 11598.0 | 68139.0 | 34.53 ± 44.83 |
| `bun ./ts/hello.ts` | 25961.3 ± 11117.8 | 12880.8 | 57490.1 | 42.28 ± 52.85 |
| `deno run ./js/hello.js` | 42018.5 ± 23244.7 | 23117.2 | 101441.8 | 68.43 ± 88.83 |
| `deno run ./ts/hello.ts` | 44875.7 ± 23843.5 | 22835.5 | 120419.5 | 73.08 ± 94.20 |
| `node ./js/hello.js` | 39922.8 ± 21443.1 | 21689.2 | 97287.3 | 65.02 ± 83.96 |
| `tsx ./ts/hello.ts` | 361753.2 ± 200485.5 | 194188.8 | 653439.5 | 589.13 ± 765.03 |
| `python3 ./python/hello.py` | 17482.7 ± 8787.6 | 9164.3 | 45828.8 | 28.47 ± 36.37 |
| `ruby ./ruby/hello.rb` | 90115.9 ± 45376.1 | 46241.2 | 201090.2 | 146.76 ± 187.52 |
| `racket ./racket/hello.rkt` | 164653.6 ± 48471.3 | 104172.9 | 313180.2 | 268.15 ± 324.65 |
| `elixir ./elixir/hello.exs` | 593266.4 ± 263308.8 | 294907.3 | 895306.6 | 966.16 ± 1212.96 |

## Results (Pow)

Each implementation calculates and prints the value of `5^4^3^2 % (10^20)`.

| Command                   |      Mean [ms] | Min [ms] | Max [ms] |         Relative |
| :------------------------ | -------------: | -------: | -------: | ---------------: |
| `./build/pow-cpp`         |      3.5 ± 2.2 |      2.0 |     19.4 |             1.00 |
| `./build/pow-rust`        |      8.5 ± 4.7 |      5.0 |     30.3 |      2.42 ± 2.05 |
| `deno run ./ts/pow.ts`    |    29.4 ± 16.0 |     16.3 |     74.5 |      8.42 ± 7.06 |
| `./build/pow-deno`        |    29.7 ± 16.4 |     16.5 |     73.5 |      8.49 ± 7.17 |
| `deno run ./js/pow.js`    |    30.0 ± 16.8 |     16.4 |     76.8 |      8.58 ± 7.29 |
| `node ./js/pow.js`        |    53.9 ± 30.2 |     30.4 |    114.8 |    15.40 ± 13.09 |
| `tsx ./ts/pow.ts`         |  207.6 ± 118.7 |    117.0 |    417.5 |    59.38 ± 50.91 |
| `bun ./js/pow.js`         |  233.2 ± 123.8 |    141.3 |    502.3 |    66.68 ± 55.38 |
| `bun ./ts/pow.ts`         |  239.6 ± 133.2 |    142.2 |    493.1 |    68.51 ± 58.03 |
| `R -f ./r/pow.r -q`       |  295.9 ± 187.9 |    145.8 |    640.0 |    84.62 ± 76.22 |
| `./build/pow-odin`        |  364.0 ± 152.0 |    236.3 |    777.6 |   104.08 ± 79.44 |
| `elixir ./elixir/pow.exs` |  844.2 ± 465.4 |    494.8 |   1537.3 |  241.41 ± 203.71 |
| `bc ./bc/pow.bc`          | 1486.7 ± 265.6 |   1111.7 |   1788.9 |  425.14 ± 282.01 |
| `ts-node ./ts/pow.ts`     | 1734.9 ± 319.5 |   1366.1 |   2117.9 |  496.11 ± 329.84 |
| `./build/pow-zig`         | 4458.9 ± 278.7 |   4020.2 |   5025.9 | 1275.06 ± 818.44 |

## Results (Factorial)

Each implementation calculates and prints the value of `1000!`.

| Command                    |     Mean [ms] | Min [ms] | Max [ms] |        Relative |
| :------------------------- | ------------: | -------: | -------: | --------------: |
| `./build/fact-rust`        |     1.4 ± 1.2 |      0.8 |     16.4 |            1.00 |
| `./build/fact-cpp`         |     1.6 ± 1.5 |      1.0 |     18.5 |     1.20 ± 1.56 |
| `./build/fact-go`          |     1.9 ± 0.8 |      1.3 |     17.3 |     1.41 ± 1.39 |
| `./build/fact-ghc`         |     2.2 ± 2.0 |      1.3 |     13.9 |     1.63 ± 2.05 |
| `./build/fact-zig`         |     4.1 ± 2.2 |      2.6 |     17.3 |     3.01 ± 3.15 |
| `./build/fact-dart.exe`    |     7.7 ± 2.4 |      5.1 |     28.4 |     5.71 ± 5.38 |
| `bc ./bc/fact.bc`          |     9.7 ± 5.6 |      5.1 |     31.5 |     7.18 ± 7.62 |
| `bun ./js/fact.js`         |    17.5 ± 8.3 |     10.4 |     47.6 |   12.97 ± 13.07 |
| `bun ./ts/fact.ts`         |    17.2 ± 8.1 |     10.1 |     41.8 |   12.72 ± 12.82 |
| `deno run ./ts/fact.ts`    |   27.7 ± 15.8 |     14.6 |     73.9 |   20.52 ± 21.69 |
| `deno run ./js/fact.js`    |   30.2 ± 16.8 |     15.3 |     67.7 |   22.34 ± 23.48 |
| `./build/fact-deno`        |   25.7 ± 13.9 |     14.2 |     66.9 |   19.01 ± 19.81 |
| `python3 ./python/fact.py` |   26.2 ± 15.7 |     14.2 |     66.4 |   19.42 ± 20.86 |
| `node ./js/fact.js`        |   51.5 ± 29.1 |     25.8 |    109.1 |   38.13 ± 40.23 |
| `ruby ./ruby/fact.rb`      |   70.5 ± 47.3 |     38.5 |    170.2 |   52.24 ± 58.24 |
| `tsx ./ts/fact.ts`         | 202.4 ± 117.9 |    116.4 |    439.2 | 149.90 ± 159.56 |
| `./build/fact-racket`      | 168.9 ± 113.5 |     86.7 |    418.3 | 125.12 ± 139.63 |
| `racket ./racket/fact.rkt` | 210.1 ± 153.8 |     98.4 |    440.4 | 155.58 ± 179.40 |
| `elixir ./elixir/fact.exs` | 669.0 ± 346.5 |    350.0 |   1261.7 | 495.49 ± 510.66 |

## Running your own benchmarks

Running your own benchmarks is not so easy.  You need to install a lot of languages and tools.  I recommend first installing [chomp](https://chompbuild.com/) then run `chomp bench:hello`.  You will likely get errors... You can then install the missing tools and try again.



