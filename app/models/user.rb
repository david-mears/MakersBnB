class User < ActiveRecord::Base
  validates_presence_of :forename, :surname, :username, :password, :email
  validates_uniqueness_of :username, :email
  has_many :availability
  has_many :space

  def self.return_user_info(user_id)
    User.find_by(id: user_id)
  end

  def self.return_user_id(username)
    User.find_by(username: username).id
  end

end
