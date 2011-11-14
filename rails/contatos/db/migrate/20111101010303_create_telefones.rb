class CreateTelefones < ActiveRecord::Migration
  def change
    create_table :telefones do |t|
      t.references :contato
      t.references :tipo_telefone
      t.integer :ddd
      t.integer :numero

      t.timestamps
    end
    add_index :telefones, :contato_id
    add_index :telefones, :tipo_telefone_id
  end
end
