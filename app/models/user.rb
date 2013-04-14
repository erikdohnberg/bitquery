class User < ActiveRecord::Base
  authenticates_with_sorcery!
  has_many :queries
  # attr_accessible :title, :body

  attr_accessible :password, :first_name, :last_name, :thandle

  validates :password, :presence => true, :confirmation => true
  # validates :email, :presence => true, :uniqueness => true
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :thandle, :presence => true, :uniqueness => true

  def self.from_omniauth(auth)
  	where(auth.slice("provider", "uid")).first || create_from_omniauth(auth)
  end

  def self.create_from_omniauth(auth)
  	create! do |user|
  		user.provider = auth["provider"]
  		user.uid = auth["uid"]
  		user.name = auth["info"]["name"]


end
