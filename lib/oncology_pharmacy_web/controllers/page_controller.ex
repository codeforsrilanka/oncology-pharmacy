defmodule OncologyPharmacyWeb.PageController do
  use OncologyPharmacyWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
