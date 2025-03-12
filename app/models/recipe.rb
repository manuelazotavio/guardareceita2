class Recipe < ApplicationRecord
  validates_presence_of(:name, :user_id, :description, :instruction, :favorited, :ingredients, :portions, :time, :rating)
end
