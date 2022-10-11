class Food < ApplicationRecord
  belongs_to :receipe_foods
  belongs_to :inventory_foods
end
