class AddStatusToPostulation < ActiveRecord::Migration[6.0]
  def change
    add_column :postulations, :status, :string, default: "pending"
  end
end
