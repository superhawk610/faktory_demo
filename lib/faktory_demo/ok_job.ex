defmodule FaktoryDemo.OkJob do
  use FaktoryWorker.Job

  def perform(_arg1) do
    :ok
  end
end
