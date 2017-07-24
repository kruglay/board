class ChangeUserTypeInUsers < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :user_type, :integer, null: true
  end
end
