class AddEmailToDogs < ActiveRecord::Migration[6.0]
  def change
    add_column :dogs, :email, :string
  end
end
