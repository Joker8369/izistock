class AddCompagnyRefToCategories < ActiveRecord::Migration[7.0]
  def change
    add_reference :categories, :compagny, null: false, foreign_key: true
  end
end
