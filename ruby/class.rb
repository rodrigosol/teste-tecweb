class Dispositivo
end

class Computador < Dispositivo

  def initialize(nome)
    @nome = nome
    @@contador ||= 0
    @@contador = (@@contador) ? @@contador:  0 
    @@contador +=1
    puts "Criei um computador " + nome
    puts "Criei um computador #{nome}"
  end
  
  def nome
  end
  
  def contador
    @@contador
  end
  
  def +
    
  end
  
end

c1 = Computador.new("Apple")
c2 = Computador.new("Apple")
c1 + c2
puts c.contador