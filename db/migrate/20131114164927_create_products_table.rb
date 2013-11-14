class CreateProductsTable < ActiveRecord::Migration
  def change
    create_table :products_tables do |t|
      t.integer :price_in_cents
    end
  end
end
