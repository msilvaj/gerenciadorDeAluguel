class CreateRefeicoes < ActiveRecord::Migration[5.2]
  def change
    create_table :refeicoes do |t|
      t.time :horario
      t.text :descricao
      t.references :trefeicao, foreign_key: true
      t.references :dieta, foreign_key: true

      t.timestamps
    end
  end
end
