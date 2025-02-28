class Recipe < ApplicationRecord
  validates_presence_of(:name, :description, :instruction, :ingredients, :portions, :time, :rating)
end
