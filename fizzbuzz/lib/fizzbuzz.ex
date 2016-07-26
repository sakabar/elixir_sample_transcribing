defmodule FizzBuzz do
  def run(limit) do
    print(1, limit)
  end

  defp print(n, limit) when n == limit do
    cond do
      #"~n"は改行
      #"~2..0B"はなんだろう。C言語のprintfの書式が使えないのは面倒だー
      rem(n, 15) == 0 -> :io.format "~2..0B: FizzBuzz~n", [n]
      rem(n, 3)  == 0 -> :io.format "~2..0B: Fizz~n", [n]
      rem(n, 5)  == 0 -> :io.format "~2..0B: Buzz~n", [n]
      true            -> nil
    end
  end

  defp print(n, limit) do
    print(n, n)
    print(n + 1, limit)
  end
end
