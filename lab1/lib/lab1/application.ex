defmodule Lab1.Application do

  use Application

  @impl true
  def start(_type, _args) do
    url = "localhost:4000/tweets/1"

    children = [
      %{
        id: Getdata,
        start: {Getdata, :my_func, [url]}
      }
    ]

    opts = [strategy: :one_for_one, name: Lab1.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
