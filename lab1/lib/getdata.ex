defmodule Lab1.Getdata do

  def my_func() do
    url = "http://localhost:4000/tweets/1"
    r = HTTPoison.get!(url)
    res = Poison.decode!(r.body)
    IO.inspect(res)
  end

end
