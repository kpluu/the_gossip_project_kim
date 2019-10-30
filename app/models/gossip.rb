class Gossip < ApplicationRecord
  belongs_to :user
  has_many :marks
  has_many :tags, through: :marks
end
