defmodule FizzBuzz do
  import ExPrintf

  def run(limit) do
    print(1, limit)
  end

  defp print(n, limit) when n == limit do
    cond do
      #"~n"は改行
      rem(n, 15) == 0 -> printf "%02d: FizzBuzz\n", [n]
      rem(n, 3)  == 0 -> printf "%02d: Fizz\n", [n]
      rem(n, 5)  == 0 -> printf "%02d: Buzz\n", [n]
      true            -> nil
    end
  end

  defp print(n, limit) do
    print(n, n)
    print(n + 1, limit)
  end
end
