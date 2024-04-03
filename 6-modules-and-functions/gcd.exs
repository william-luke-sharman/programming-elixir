defmodule GCD do
  def gcd_func(x,0), do: x
  def gcd_func(x,y), do: gcd_func(y,rem(x,y))
end
