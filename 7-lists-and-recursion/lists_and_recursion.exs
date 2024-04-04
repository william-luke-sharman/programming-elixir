defmodule ListsAndRecursion do

  @doc """
  Takes a list and a function.

  Applies the function to each element of the list and sums the result
  """
  def mapsum([], _func), do: 0

  def mapsum([head | tail], func) do
    func.(head) + mapsum(tail, func)
  end


  @doc """
  Takes a list a returns the maximum value.
  """
  def max([current]), do: current

  def max([current, next | tail]) when current >= next, do: max([current | tail])

  def max([current, next | tail]) when current < next, do: max([next | tail])


  @doc """
  Takes a string and a shift value.

  Adds shift value to each character, wrapping if the result is greater than 'z'
  """
  def caesar([], _shift), do: []

  def caesar([head | tail], shift), do: [97 + rem(head - 97 + shift, 26) | caesar(tail, shift)]


  @doc """
  Takes two numbers, from and two.

  Returns a list of the numbers between from and to.
  """
  def span(from, to) when from > to, do: []

  def span(from, to) when from <= to do
   [from | span(from + 1, to)]
  end


  @doc """
  Takes a list and a function.

  Applies the function to each element.

  Returns true if the function returns true for each element.
  """
  def all?([head | tail], fun) do
    fun.(head) and all?(tail, fun)
  end

  def all?([], _fun), do: true


  @doc """
  Takes a list and a function.

  Applies the function to each element.

  Returns :ok
  """

  def each([head | tail], fun) do
    fun.(head)
    each(tail, fun)
  end

  def each([], _fun), do: :ok


  @doc """
  Takes a list and a function.

  Applies function to each list element.

  Returns a list of elements for which function returned true.
  """
  def filter([], _), do: []

  def filter([h | t], fun) do
    if fun.(h) do
      [h | filter(t, fun)]
    else
      filter(t, fun)
    end
  end


  @doc """
  Takes a list and a number.

  Splits the list into two, using number to determine where to split the list.

  Returns a two-element tuple containing the sublists.
  """
  def split(list, counter, acc \\ [])

  def split([head | tail], counter, acc) when counter > 0 do
    split(tail, counter - 1, [head | acc])
  end

  def split(list, counter, acc) when counter == 0 do
    {reverse(acc), list}
  end


  @doc """
  Takes a list and reverses the order of its elements.

  Returns the reversed list.
  """
  def reverse(list, acc \\ [])

  def reverse([head | tail], acc) do
    reverse(tail, [head | acc])
  end

  def reverse([], acc), do: acc


  @doc """
  Takes a list and a number.

  Returns the first n elements of the list.
  """
  def take([head | tail], counter) when counter > 0 do
    [head | take(tail, counter - 1)]
  end

  def take(_, counter) when counter == 0, do: []


  @doc """
  Takes a list that may contain any number of sublists.

  They themselves may contain sublists, to any depth.

  Returns the elements of these lists as a flat list.
  """

  def flatten(list), do: reverse(flatten(list, []))

  defp flatten([], acc), do: acc

  defp flatten([head | tail], acc) when is_list(head), do: flatten(tail, flatten(head, acc))

  defp flatten([head | tail], acc), do: flatten(tail, [head | acc])

end
