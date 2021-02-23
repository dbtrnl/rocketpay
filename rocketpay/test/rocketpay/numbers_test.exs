defmodule Rocketpay.NumbersTest do
  use ExUnit.Case

  alias Rocketpay.Numbers

  describe "sum_from_file/1" do
    test "when there is a file with given name, return the sum of all numbers in the file" do
      response = Numbers.sum_from_file("numbers")

      expected_response = {:ok, %{result: 37}}

      assert response == expected_response
    end

    test "when there is no file with given name, return error" do
      response = Numbers.sum_from_file("noname")

      expected_response = {:error, %{message: "Invalid File"}}

      assert response == expected_response
    end
  end
end
