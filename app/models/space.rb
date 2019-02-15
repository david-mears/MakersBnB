class Space < ActiveRecord::Base
  validates_presence_of :name, :description, :price, :user_id

  belongs_to :user
  has_many :availability
end
