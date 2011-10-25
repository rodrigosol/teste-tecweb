class Aluno < ActiveRecord::Base
  belongs_to :cidade
  has_and_belongs_to_many :disciplinas
end
