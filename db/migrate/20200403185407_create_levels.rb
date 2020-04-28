class CreateLevels < ActiveRecord::Migration[6.0]
  def change
    create_table :levels do |t|
      t.string :name
      t.string :event_id
      t.integer :game_id
      t.string :doors
      t.string :description
      t.string :image

      t.timestamps
    end
  end
end
