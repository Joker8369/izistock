class CreateJoinTableSupplierArticle < ActiveRecord::Migration[7.0]
  def change
    create_join_table :suppliers, :articles do |t|
      # t.index [:supplier_id, :article_id]
      # t.index [:article_id, :supplier_id]
    end
  end
end
