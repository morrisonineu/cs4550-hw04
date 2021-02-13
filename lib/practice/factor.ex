defmodule Practice.Factor do
  def parse_float(text) do
      {num, _} = Float.parse(text)
      num
  end
  
  def factor(x) do
    list = []
    Enum.each(2..trunc(parse_float(x)), f(n) -> list ++ factor_help(trunc(parse_float(x)), n) end)
  end
  
  def factor_help(x, n) do
    if rem(x, n) == 0 do
      [n]
    else
      []
    end
  end
end
