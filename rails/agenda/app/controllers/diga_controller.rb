class DigaController < ApplicationController
  def oi
    @valor = "Ola Mundo"
  end
  
  def hello
  end
  
  def calc
    v1 = params[:valor1].to_i
    v2 = params[:valor2].to_i
    op = params[:op]
    resultado = v1.send(op.to_sym,v2)
    
    render :text => resultado
  end

end
