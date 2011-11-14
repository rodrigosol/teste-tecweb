ActiveAdmin.register Telefone do
  filter :tipo_telefone , :as => :check_boxes, :label_method => :descricao
  filter :contato , :as => :select, :label_method => :nome
end
