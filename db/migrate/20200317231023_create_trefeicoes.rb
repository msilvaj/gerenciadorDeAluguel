class CreateTrefeicoes < ActiveRecord::Migration[5.2]
  def change
    create_table :trefeicoes do |t|
      t.string :nome

      t.timestamps
    end
  end
end
