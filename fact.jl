#!/usr/bin/env julia

function fact(n::BigInt)
  if (n == 0)
    return 1
  else
    return n * fact(n-1)
  end
end

println(fact(BigInt(1000)))