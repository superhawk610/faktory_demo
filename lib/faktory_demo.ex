defmodule FaktoryDemo do
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = []
    opts = [name: __MODULE__.Supervisor, strategy: :one_for_one]

    Supervisor.start_link(children, opts)
  end
end
