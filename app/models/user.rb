class User < ActiveRecord::Base
  has_many :cars
  has_secure_password
  validates :username, :email, :password, presence: true 

  def slug
    self.username.downcase.gsub(" ","-")
  end

  def self.find_by_slug(slug)
    self.all.detect{|user| user.slug == slug}
  end
end
