defmodule RocketpayWeb.AccountsView do
  alias Rocketpay.{Account, User}

  def render("update.json", %{account: %Account{id: id, balance: balance, user_id: user_id}}) do
    %{
      message: "Account updated",
      acccount: %{
        id: id,
        balance: balance,
        user_id: user_id
      }
    }
  end
end