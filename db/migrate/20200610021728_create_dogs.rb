class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.string :name
      t.integer :age
      t.string :breed
      t.string :owner
      t.string :phone
      t.sting :biography
      t.string :password_digest

      t.timestamps
    end
  end
end
