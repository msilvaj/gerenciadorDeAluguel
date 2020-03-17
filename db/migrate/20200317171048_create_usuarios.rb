class CreateUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios do |t|
      t.boolean :admin
      t.string :nome
      t.decimal :peso
      t.decimal :pesoIdeal
      t.decimal :altura

      t.timestamps
    end
  end
end
