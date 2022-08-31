defmodule Arbitrary do
  def pow(_,0), do: 1
  def pow(b,e) when e > 0, do: pow(b,e,1)
  
  defp pow(b,1,acc), do: acc * b
  defp pow(b,p,acc) when rem(p,2)==0, do: pow(b*b,div(p,2),acc)
  defp pow(b,p,acc), do: pow(b,p-1,acc*b)
  
  def test do
    s = pow(5,pow(4,pow(3,2)))
    IO.puts Integer.mod(s, pow(10, 20))
  end
end
Arbitrary.test