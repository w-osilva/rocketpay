defmodule Rocketpay.NumbersTest do
  use ExUnit.Case

  alias Rocketpay.Numbers

  describe "sum_from_file/1" do
    # success
    test "when there is a file with given name, returns the sum of numbers" do
      response = Numbers.sum_from_file("numbers")
      expected_response = {:ok, %{result: 37}}
      assert response == expected_response
    end

    # error
    test "when there is no file with given name, returns the error" do
      response = Numbers.sum_from_file("banana")
      expected_response = {:error, %{message: "Invalid file."}}
      assert response == expected_response
    end
  end
end