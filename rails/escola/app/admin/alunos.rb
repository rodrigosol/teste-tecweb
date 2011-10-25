ActiveAdmin.register Aluno do
  index :as => :grid do |aluno|
     div :class => 'div_alunos' do
       link_to(aluno.nome, admin_aluno_path(aluno))
     end
   end
  form do |f|
       f.inputs "Dados do Aluno" do
         f.input :nome
         f.input :nascimento
         f.input :cidade
         f.input :disciplinas , :as => :check_boxes, :label_method => :nome
       end
       f.buttons
     end  
end
