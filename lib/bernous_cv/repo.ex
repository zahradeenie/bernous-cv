defmodule BernousCv.Repo do
  use Ecto.Repo,
    otp_app: :bernous_cv,
    adapter: Ecto.Adapters.Postgres
end
