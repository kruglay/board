class RemoveSexFieldFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :sex, :integer
  end
end
