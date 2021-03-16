defmodule Lab1.Getdata do

  def my_func() do
    {:ok, _pid} = EventsourceEx.new(url, stream_to: self())
  end

end
