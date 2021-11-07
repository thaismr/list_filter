defmodule ListFilter do
  require Integer

  def call(list) do
    list
    |> Enum.flat_map(fn string ->
      case Integer.parse(string) do
        {int, _rest} -> [int]
        :error -> []
      end
    end)
    |> Enum.count(fn elem -> Integer.is_odd(elem) end)
  end
end
