defmodule Chop do
  def guess(actual, low..high) do
    new_guess = div(low + high, 2)
    IO.puts "Is it #{new_guess}"
    check(actual, new_guess, low..high)
  end

  defp check(actual, new_guess, _) when actual == new_guess, do: IO.puts(new_guess)

  defp check(actual, new_guess, _low..high) when actual > new_guess, do: guess(actual, (new_guess + 1)..high)

  defp check(actual, new_guess, low.._high) when actual < new_guess, do: guess(actual, low..(new_guess - 1))

end
