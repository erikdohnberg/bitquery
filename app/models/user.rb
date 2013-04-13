class User < ActiveRecord::Base
  authenticates_with_sorcery!
  has_many :queries
  # attr_accessible :title, :body

  attr_accessible :email, :password, :password_confirmation

  validates :password, :presence => true, :confirmation => true
  # validates :email, :presence => true, :uniqueness => true
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :thandle, :presence => true, :uniqueness => true

end
