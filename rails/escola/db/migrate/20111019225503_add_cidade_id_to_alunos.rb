class AddCidadeIdToAlunos < ActiveRecord::Migration
  def change
    add_column :alunos, :cidade_id, :integer
  end
end
