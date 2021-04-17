defmodule FaktoryDemo.RaiseJob do
  use FaktoryWorker.Job

  def perform(reason) do
    raise reason
  end
end
