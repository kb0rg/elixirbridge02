defmodule PokeappTest do
  use ExUnit.Case
  doctest Pokeapp

  test "greets the world" do
    assert Pokeapp.hello() == :world
  end
end
