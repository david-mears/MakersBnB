class User < ActiveRecord::Base
  has_many :availability
  has_many :space
end
