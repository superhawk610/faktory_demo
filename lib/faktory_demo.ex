defmodule FaktoryDemo do
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      {FaktoryWorker, Application.get_env(:faktory_demo, FaktoryWorker)}
    ]

    opts = [name: __MODULE__.Supervisor, strategy: :one_for_one]
    Supervisor.start_link(children, opts)
  end
end
