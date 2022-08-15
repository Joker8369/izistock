class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :name
      t.string :designation
      t.integer :colour
      t.integer :purchase_price
      t.integer :sale_price
      t.string :code
      t.integer :quantity

      t.timestamps
    end
  end
end
