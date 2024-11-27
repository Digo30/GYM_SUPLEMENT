class AddFlavorToProducts < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :flavor, :string
  end
end
