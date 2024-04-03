defmodule MyList do
  def all?([head | tail], fun) do
    fun.(head) and all?(tail, fun)
  end

  def all?([], _fun), do: true

end
