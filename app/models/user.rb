class User < ActiveRecord::Base
  authenticates_with_sorcery!
  # attr_accessible :title, :body

  attr_accessible :email, :password, :password_confirmation

  validates :password, :presence => true, :confirmation => true
  validates :email, :presence => true, :uniqueness => true

end
