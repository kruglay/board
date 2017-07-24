class ChangeRoleToUsers < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :role, :integer, null: false, default: 0
  end
end