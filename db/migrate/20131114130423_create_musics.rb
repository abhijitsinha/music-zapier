class CreateMusics < ActiveRecord::Migration
  def change
    create_table :musics do |t|
      t.string :name
      t.string :artist
      t.integer :year

      t.timestamps
    end
  end
end
