class CreateUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios do |t|
      t.boolean :admin
      t.string :nome
      t.double :peso
      t.double :pesoIdeal
      t.double :altura

      t.timestamps
    end
  end
end
