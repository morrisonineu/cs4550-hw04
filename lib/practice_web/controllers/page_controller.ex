defmodule PracticeWeb.PageController do
  use PracticeWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def double(conn, %{"x" => x}) do
    {x, _} = Integer.parse(x)
    y = Practice.double(x)
    render conn, "double.html", x: x, y: y
  end

  def calc(conn, %{"expr" => expr}) do
    y = Practice.calc(expr)
    render conn, "calc.html", expr: expr, y: y
  end

  def factor(conn, %{"x" => x}) do
    y = Practice.factor(x)
    render conn, "factor.html", x: x, y: y
  end

  # Added: Add an action for palindrome.
  # Added: Add a template for palindrome over in lib/*_web/templates/page/??.html.eex
  def palindrome?(conn, %{"str" => str}) do
    ans = Practice.palindrome?(str)
    render conn, "palindrome.html", str: str, ans: ans
  end
end
