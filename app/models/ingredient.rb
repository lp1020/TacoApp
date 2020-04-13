class Ingredient < ApplicationRecord
  belongs_to :ingcat
  has_many :tacosingredients
  has_many :tacos, through: :tacosingredients
end
