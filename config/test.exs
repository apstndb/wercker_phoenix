use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :wercker_phoenix, WerckerPhoenix.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
# NOTE: Use env ver of docker link format
config :wercker_phoenix, WerckerPhoenix.Repo,
  adapter: Ecto.Adapters.MySQL,
  username: "root",
  password: "",
  database: "wercker_phoenix_test",
  hostname: System.get_env("MYSQL_PORT_3306_TCP_ADDR") || "127.0.0.1",
  port: System.get_env("MYSQL_PORT_3306_TCP_PORT") || "3306",
  pool: Ecto.Adapters.SQL.Sandbox
