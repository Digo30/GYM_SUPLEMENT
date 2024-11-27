class AddFlavorAndWeightToProducts < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :flavor, :string
    add_column :products, :weight, :float
  end
end
