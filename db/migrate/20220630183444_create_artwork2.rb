class CreateArtwork2 < ActiveRecord::Migration[5.2]
  def change
    create_table :artwork2s do |t|
      t.string :title, null: false
      t.string :image_url, null: false
      t.integer :artist_id, null: false
    end
  end
end
