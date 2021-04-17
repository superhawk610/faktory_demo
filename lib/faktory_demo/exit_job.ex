defmodule FaktoryDemo.ExitJob do
  use FaktoryWorker.Job

  def perform(_arg1) do
    exit(:exit_reason)
  end
end
