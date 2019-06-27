class Post < ApplicationRecord
	
	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/assets/images/ytrlg.png"
	# styles: { large:'400×400>', medium='300×250>', thumb:'100×80#'}

	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end          
	               


