class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :artist_name
      t.integer :release_year
      t.boolean :released, default: false
      t.string :genre

      t.timestamps
    end
  end
end
