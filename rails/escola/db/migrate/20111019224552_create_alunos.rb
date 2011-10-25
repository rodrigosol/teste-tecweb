class CreateAlunos < ActiveRecord::Migration
  def change
    create_table :alunos do |t|
      t.string :nome
      t.date :nascimento
      t.boolean :sexo

      t.timestamps
    end
  end
end
