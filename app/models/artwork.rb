class Artwork < ApplicationRecord
    validates :title, uniqueness: {scope: :artist_id,
    message: "artists cannot have duplicate titles"}

    belongs_to :artist,
    primary_key: :id,
    foreign_key: :artist_id,
    class_name: :User

    has_many :viewer,
    primary_key: :id,
    foreign_key: :artwork_id,
    class_name: :ArtworkShare
    
    has_many :shared_viewers,
    through: :viewer,
    source: :viewer
    
    
end