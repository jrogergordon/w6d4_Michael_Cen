class Artworks < ActiveRecord::Migration[5.2]
  def change
    add_index :artworks, :artist_id, unique: true
  end
end
