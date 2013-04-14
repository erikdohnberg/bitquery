class Instructor < ActiveRecord::Base
authenticates_with_sorcery!
  # attr_accessible :title, :body

  attr_accessible :password, :first_name, :last_name, :thandle

  validates :password, :presence => true, :confirmation => true
  # validates :email, :presence => true, :uniqueness => true
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :thandle, :presence => true, :uniqueness => true
end