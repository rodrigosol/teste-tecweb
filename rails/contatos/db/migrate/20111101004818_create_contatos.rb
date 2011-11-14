class CreateContatos < ActiveRecord::Migration
  def change
    create_table :contatos do |t|
      t.string :nome , :limit => 30, :null => false
      t.string :sobrenome, :limit => 30, :null => false
      t.date :data_nascimento
      t.text :observacoes 
      t.float :creditos , :default => 351.34
      t.integer :cpf
      t.boolean :sexo 

      t.timestamps
    end
  end
end
