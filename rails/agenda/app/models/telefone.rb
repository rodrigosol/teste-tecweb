class Telefone < ActiveRecord::Base
  belongs_to :tipo_telefone
  belongs_to :contato
end
