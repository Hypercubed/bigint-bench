defmodule Factorial do
  # Simple recursive function
  def fac(0), do: 1
  def fac(n) when n > 0, do: n * fac(n - 1)
  
  def test do
    IO.puts fac(1000)
  end
end
Factorial.test