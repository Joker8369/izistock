class Category < ApplicationRecord
  belongs_to :compagny
  has_many :articles, through: :article_categories
  has_many :articles
end
