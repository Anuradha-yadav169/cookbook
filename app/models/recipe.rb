class Recipe < ApplicationRecord
    has_and_belongs_to_many :ingredients
    validates :name, presence: true, length: { maximum: 100 }
    validates :instructions, presence: true, length: { maximum: 1000 }
    validates :cooking_time, presence: true, numericality: { greater_than: 0 }
  end
  