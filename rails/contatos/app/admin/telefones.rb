# -*- coding: utf-8 -*-
ActiveAdmin.register Telefone do
  scope :minas_gerais
  scope :rio_de_janeiro
  
  filter :tipo_telefone ,:label_method => :descricao , :as => :check_boxes

  index do
    column "Numero do Telefone"  do |telefone|
      "(#{telefone.ddd})#{telefone.numero}"
    end
  end
  
  form do |f|
    f.inputs "Dados do Telefone" do
      f.input :contato , :label_method => :nome
      f.input :ddd , :hint => "Informe o DDD com dois dígitos"
      f.input :numero, :hint => "Informe o Número com oito dígitos"
      f.buttons
    end
  end
  
end
