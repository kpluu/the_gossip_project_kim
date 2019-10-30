class Tag < ApplicationRecord
  has_many :marks
  has_many :gossips, through: :gossips
end
