class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name, null: false, default: ""
      t.integer :sex, null: false, default: 1
      t.string :login, null: false, default: ""
      t.integer :day_in_service
      t.string :contacts
      t.string :personal_info
      t.integer :rate_employer
      t.integer :rate_contractor
      t.integer :user_type, null: false
      t.boolean :inactive
      t.date :locked_to_date
      t.boolean :blocked

      t.timestamps
    end
  end
end
