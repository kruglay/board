class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.boolean :inactive
      t.string :name, null: false, uniqueness: true, index: true
      t.integer :game_type
    end
  end
end
