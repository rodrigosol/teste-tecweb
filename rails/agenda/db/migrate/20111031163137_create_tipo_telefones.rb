class CreateTipoTelefones < ActiveRecord::Migration
  def change
    create_table :tipo_telefones do |t|
      t.string :descricao

      t.timestamps
    end
    
    TipoTelefone.create(:descricao => "Residencial")
    TipoTelefone.create(:descricao => "Comercial")    
    TipoTelefone.create(:descricao => "Celular")    
  end
end
