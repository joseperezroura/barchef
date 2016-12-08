class Recipe < ApplicationRecord
has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

belongs_to :user
validates_uniqueness_of :name
acts_as_likeable

def self.search(search)
  if search
    where('name LIKE ? OR description LIKE ?', "%#{search}%", "%#{search}%")
  else
    all
  end
end
	
end
