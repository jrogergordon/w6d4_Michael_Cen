# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
user_1 = User.create!(username: "Peter")
user_2 = User.create!(username: "Megan")
user_3 = User.create!(username: "Chris")
user_4 = User.create!(username: "Bryan")
user_5 = User.create!(username: "Griffin")
user_6 = User.create!(username: "Quagmire")

Artwork.destroy_all
title_1 =Artwork.create!(title: "Darius the hand of Noxus", image_url: "111", artist_id: user_1.id)
title_2 =Artwork.create!(title: "Garen the might of Demacia", image_url: "112", artist_id: user_1.id)
title_3 =Artwork.create!(title: "Fiora the Grand Duelist", image_url: "113", artist_id: user_2.id)
title_4 =Artwork.create!(title: "Gnar The Missing Link", image_url: "114", artist_id: user_2.id)
title_5 =Artwork.create!(title: "Teemo the Swift Scout", image_url: "115", artist_id: user_3.id)
title_6 =Artwork.create!(title: "Teemo the Swift Scout", image_url: "116", artist_id: user_5.id)
title_7 =Artwork.create!(title: "Quinn Demacia's Wings", image_url: "117", artist_id: user_4.id)
title_8 =Artwork.create!(title: "Vayne the Night Hunter", image_url: "118", artist_id: user_5.id)
title_9 =Artwork.create!(title: "Lucian the Purefire", image_url: "119", artist_id: user_6.id)
title_10 =Artwork.create!(title: "Swain The Noxian Grand General", image_url: "120", artist_id: user_4.id)

ArtworkShare.destroy_all
ArtworkShare.create!(artwork_id: title_1.id, viewer_id: user_1.id)
ArtworkShare.create!(artwork_id: title_2.id, viewer_id: user_2.id)
ArtworkShare.create!(artwork_id: title_3.id, viewer_id: user_3.id)
ArtworkShare.create!(artwork_id: title_4.id, viewer_id: user_4.id)
ArtworkShare.create!(artwork_id: title_5.id, viewer_id: user_5.id)
ArtworkShare.create!(artwork_id: title_6.id, viewer_id: user_6.id)
ArtworkShare.create!(artwork_id: title_7.id, viewer_id: user_1.id)
ArtworkShare.create!(artwork_id: title_8.id, viewer_id: user_2.id)
ArtworkShare.create!(artwork_id: title_9.id, viewer_id: user_3.id)
ArtworkShare.create!(artwork_id: title_10.id, viewer_id: user_4.id)
ArtworkShare.create!(artwork_id: title_1.id, viewer_id: user_2.id)
ArtworkShare.create!(artwork_id: title_2.id, viewer_id: user_3.id)
ArtworkShare.create!(artwork_id: title_3.id, viewer_id: user_4.id)
ArtworkShare.create!(artwork_id: title_4.id, viewer_id: user_5.id)
ArtworkShare.create!(artwork_id: title_5.id, viewer_id: user_6.id)

