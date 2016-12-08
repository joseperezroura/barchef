class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :first_name, :last_name, :bio, :industry, :location

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  has_many :recipes

  acts_as_followable
  acts_as_follower
  acts_as_liker
  
  def self.search(search)
    if search
      where('first_name LIKE ? OR last_name LIKE ?', "%#{search}%", "%#{search}%")
    else
      all
    end
  end

end
