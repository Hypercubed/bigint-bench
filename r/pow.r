library(gmp)
result <- pow.bigz(5, pow.bigz(4, pow.bigz(3, 2)))
result <- mod.bigz(result, pow.bigz(10, 20))
cat(as.character(result))