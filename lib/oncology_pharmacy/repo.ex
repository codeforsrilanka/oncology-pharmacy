defmodule OncologyPharmacy.Repo do
  use Ecto.Repo,
    otp_app: :oncology_pharmacy,
    adapter: Ecto.Adapters.MyXQL
end
