class Contato < ActiveRecord::Base
  has_many :telefones
  
  def nome_completo
    "#{nome} #{sobrenome}"
  end
  
end
