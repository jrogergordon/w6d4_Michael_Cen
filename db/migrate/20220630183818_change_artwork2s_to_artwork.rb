class ChangeArtwork2sToArtwork < ActiveRecord::Migration[5.2]
  def change
    rename_table :artwork2s, :artworks
  end
end
