class CreateContatos < ActiveRecord::Migration
  def change
    create_table :contatos do |t|
      t.string :nome
      t.string :sobrenome
      t.string :data_nascimento
      t.string :cpf
      t.text :observacoes

      t.timestamps
    end
  end
end
