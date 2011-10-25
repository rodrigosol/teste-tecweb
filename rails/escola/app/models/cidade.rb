class Cidade < ActiveRecord::Base
  has_many :alunos
  
  def to_s 
    nome
  end
end
