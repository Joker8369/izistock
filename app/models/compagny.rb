class Compagny < ApplicationRecord
  has_many :categories, dependent: :destroy
end
