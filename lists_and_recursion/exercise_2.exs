defmodule Exercise2 do
  def max([current]), do: current

  def max([current, next | tail]) when current >= next, do: max([current | tail])

  def max([current, next | tail]) when current < next, do: max([next | tail])

end
