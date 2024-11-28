class AddNameAndSurnameToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :nome, :string
    add_column :users, :sobrenome, :string
  end
end
