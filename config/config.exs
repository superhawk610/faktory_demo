import Config

config :faktory_demo, FaktoryWorker,
  name: FaktoryWorker,
  connection: [
    host: "localhost",
    port: 7419,
    password: nil,
    use_tls: false
  ],
  pool: [
    size: 10,
    buffer_size: :infinity
  ],
  worker_pool: [
    size: 10,
    disable_fetch: false,
    queues: ["default"]
  ]

# ---

env = Mix.env()

unless env in [:dev, :test] do
  raise "#{env} not supported"
end

import_config "#{env}.exs"
