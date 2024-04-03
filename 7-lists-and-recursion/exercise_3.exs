defmodule Exercise3 do
  def caesar([], _shift), do: []

  def caesar([head | tail], shift), do: [97 + rem(head - 97 + shift, 26) | caesar(tail, shift)]

end
