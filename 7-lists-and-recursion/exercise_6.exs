defmodule MyList do
  def each([head | tail], fun) do
    fun.(head)
    each(tail, fun)
  end

  def each([], _fun), do: :ok

end
