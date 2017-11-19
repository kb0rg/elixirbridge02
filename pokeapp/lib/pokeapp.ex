defmodule Pokeapp do
  use Application
  use Supervisor
  @moduledoc """
  Documentation for Pokeapp.
  """

  def start(_type, _args) do
    Supervisor.start_link([{Pokeapp.Router, []}, {Pokeapp.ApiHandler, []}], strategy: :one_for_one)
  end

  @doc """
  Hello world.

  ## Examples

      iex> Pokeapp.hello
      :world

  """
  def hello do
    :world
  end

  @doc """
  Say Hello

  ## Parameters
   -name: String of a persons
  ## Examples

    iex> Pokeapp.say("kborg")
    "Hello kborg"
    
  """

  def say(name) do
    "Hello #{name}"
  end

end
