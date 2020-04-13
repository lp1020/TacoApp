class Taco < ApplicationRecord
  belongs_to :tacocat
  has_many :tacosingredients
  has_many :ingredients, through: :tacosingredients
end
