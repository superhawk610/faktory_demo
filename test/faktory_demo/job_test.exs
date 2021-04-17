defmodule FaktoryDemo.DemoJobTest do
  use ExUnit.Case

  import FaktoryWorker.Testing

  test "returns :ok when job succeeds" do
    assert perform_job(FaktoryDemo.OkJob, "whatever") == :ok
  end

  test "returns {:ok, value} when job succeeds with value" do
    assert perform_job(FaktoryDemo.OkValueJob, "foo") == {:ok, "foo"}
  end

  test "returns :error when job fails" do
    assert perform_job(FaktoryDemo.ErrorJob, "whatever") == :error
  end

  test "returns {:error, reason} when job fails with reason" do
    assert perform_job(FaktoryDemo.ErrorReasonJob, "bar") == {:error, "bar"}
  end

  test "returns {:error, raise_reason} when job raises" do
    assert perform_job(FaktoryDemo.RaiseJob, "baz") == {:error, "baz"}
  end

  test "returns {:error, exit_reason} when job exits" do
    assert perform_job(FaktoryDemo.ExitJob, "whatever") == {:error, :exit_reason}
  end

  # TODO: test job timeout?
end
