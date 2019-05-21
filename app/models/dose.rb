class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :ingredient, uniqueness: { scope: :cocktail }
  validates :description, presence: true, allow_blank: false
  validates :ingredient, presence: true
end
