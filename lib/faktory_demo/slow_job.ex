defmodule FaktoryDemo.SlowJob do
  use FaktoryWorker.Job

  def perform(timeout) do
    Process.sleep(timeout)
    IO.puts("done! (slept #{timeout}ms)")

    :ok
  end
end
