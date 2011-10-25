class Disciplina < ActiveRecord::Base
  has_and_belongs_to_many :alunos
end
