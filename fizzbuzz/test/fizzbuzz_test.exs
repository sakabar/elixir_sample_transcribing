defmodule FizzbuzzTest do
  use ExUnit.Case
  # doctest Fizzbuzz

  import ExUnit.CaptureIO

  test "fizzbuzz with 10" do

    assert capture_io( fn -> FizzBuzz.run(10) end ) == """
03: Fizz
05: Buzz
06: Fizz
09: Fizz
10: Buzz
"""
  end
end
