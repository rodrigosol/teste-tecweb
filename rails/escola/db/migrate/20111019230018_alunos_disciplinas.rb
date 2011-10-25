class AlunosDisciplinas < ActiveRecord::Migration
  def self.up
    create_table :alunos_disciplinas, :id => false, :force => true do |t|
        t.integer :aluno_id
        t.integer :disciplina_id
    end
    add_index :alunos_disciplinas, [ :aluno_id, :disciplina_id ], :unique => true, :name => 'user_macrociclo_unique_index'
  end

  def self.down
    drop_table :alunos_disciplinas
  end

end
