class CreateTelefones < ActiveRecord::Migration
  def change
    create_table :telefones do |t|
      t.integer :contato_id
      t.references :tipo_telefone
      t.integer :ddd
      t.integer :numero

      t.timestamps
    end
    add_index :telefones, :tipo_telefone_id
  end
end
