defmodule Filter do

  def filter([], _), do: []

  def filter([h | t], fun) do
    if fun.(h) do
      [h | filter(t, fun)]
    else
      filter(t, fun)
    end
  end

end
