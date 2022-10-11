class InventoryFood < ApplicationRecord
  has_many :food
  has_many :inventories
end
