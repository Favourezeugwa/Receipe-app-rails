class ReceipeFood < ApplicationRecord
  has_many :foods
  has_many :receipes
end
