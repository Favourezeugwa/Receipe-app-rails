class User < ApplicationRecord
  has_many :receipes
  has_many :inventories
end
