class Space < ActiveRecord::Base
  # validates :name, presence: true
  # validates :description, presence: true
  # validates :price, presence: true
  # validates :user_id, presence: true
  validates_presence_of :name, :description, :price, :user_id

  belongs_to :user
  has_many :availability
end
