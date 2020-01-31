defmodule OncologyPharmacyWeb.CategoryController do
  use OncologyPharmacyWeb, :controller

  def create(conn, _params) do
    render(conn, "create.html")
  end
end
