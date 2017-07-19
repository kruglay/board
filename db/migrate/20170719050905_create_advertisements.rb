class CreateAdvertisements < ActiveRecord::Migration[5.1]
  def change
    create_table :advertisements do |t|
      t.boolean :inactive
      t.references :user, foreign_key: true, null: false, index: true
      t.string :title, null: false
      t.integer :status, null: false
      t.integer :product_type, null: false
      t.integer :ad_type, null: false
      t.integer :game_type, null: false
      t.references :game, foreign_key: true, null: false, index: true
      t.integer :sum
      t.text :text, null: false
      t.text :services
      t.integer :rating_to_employee
      t.integer :rating_to_user
      t.text :mention_to_employee
      t.text :mention_to_user
      t.references :employee, foreign_key: { to_table: user }, index: true
      t.datetime :finished_at
      t.integer :response_count
      t.integer :watches_count

      t.timestamps
    end
  end
end
