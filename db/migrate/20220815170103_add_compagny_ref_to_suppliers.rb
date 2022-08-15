class AddCompagnyRefToSuppliers < ActiveRecord::Migration[7.0]
  def change
    add_reference :suppliers, :compagny, null: false, foreign_key: true
  end
end
