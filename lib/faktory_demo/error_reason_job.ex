defmodule FaktoryDemo.ErrorReasonJob do
  use FaktoryWorker.Job

  def perform(reason) do
    {:error, reason}
  end
end
