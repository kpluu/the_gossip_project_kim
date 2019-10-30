class Gossip < ApplicationRecord
  validates :title, :content, presence: true
  belongs_to :user
  has_many :marks
  has_many :tags, through: :marks
end
