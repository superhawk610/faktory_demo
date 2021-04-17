defmodule FaktoryDemo.ErrorJob do
  use FaktoryWorker.Job

  def perform(_args) do
    :error
  end
end
