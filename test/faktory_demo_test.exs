defmodule FaktoryDemoTest do
  use ExUnit.Case
  doctest FaktoryDemo

  test "greets the world" do
    assert FaktoryDemo.hello() == :world
  end
end
