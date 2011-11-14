class Telefone < ActiveRecord::Base
  belongs_to :contato
  belongs_to :tipo_telefone

  scope :minas_gerais , where("ddd like ?","3%")
  scope :rio_de_janeiro , where("ddd like ?","2%")
  
  validates_presence_of :ddd , :message => "Fim!!!"
end
