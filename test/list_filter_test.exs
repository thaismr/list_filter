defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "returns how many strings with odd numeric values in list" do
      list1 = ["1", "3", "6", "43", "banana", "6", "abc"]
      list2 = ["0", "5", "7", "33", "bananada", "9", "xyz"]

      assert ListFilter.call(list1) == 3
      assert ListFilter.call(list2) == 4
    end
  end
end
