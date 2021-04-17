defmodule FaktoryDemo.OkValueJob do
  use FaktoryWorker.Job

  def perform(value) do
    {:ok, value}
  end
end
