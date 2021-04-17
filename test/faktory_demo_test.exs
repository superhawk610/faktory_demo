defmodule FaktoryDemoTest do
  use ExUnit.Case

  import FaktoryWorker.Testing

  setup do
    reset_queues()
  end

  test "passes" do
    FaktoryDemo.OkJob.perform_async("whatever")

    assert_enqueued(FaktoryDemo.OkJob)
    assert_enqueued(FaktoryDemo.OkJob, args: ["whatever"])

    refute_enqueued(FaktoryDemo.OkJob, args: ["something else"])
  end

  test "fails" do
    FaktoryDemo.OkJob.perform_async("foo")
    FaktoryDemo.OkJob.perform_async("bar")

    # failing assertions
    refute_enqueued(FaktoryDemo.OkJob)
    assert_enqueued(FaktoryDemo.OkJob, args: ["baz"])

    # `:args` should be a list
    assert_enqueued(FaktoryDemo.OkJob, args: "baz")

    # `:opts` should be a keyword list
    assert_enqueued(FaktoryDemo.OkJob, opts: :bad_opts)

    # extra filters are forbidden
    assert_enqueued(FaktoryDemo.OkJob, bad_filter: :whatever)
  end
end
