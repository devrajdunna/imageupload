class Post < ApplicationRecord
	has_attached_file :image, styles: { large:"500x600>", medium: "250x300>", thumb: "80x100>" },
					  :default_url => "/images/ytrlg.png",
					  :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"
	validates_attachment_presence :image
	validates_attachment_content_type :image, :content_type =>['image/jpeg', 'image/png']

end
