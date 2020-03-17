class CreateDietas < ActiveRecord::Migration[5.2]
  def change
    create_table :dietas do |t|
      t.date :dataInicio
      t.date :dataFinal
      t.references :usuario, foreign_key: true

      t.timestamps
    end
  end
end
