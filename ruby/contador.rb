frequencia = {}

File.open('macbeth.txt','r').each_line do |linha| 
  linha.split(/\s/).each do |palavra| 
    frequencia[palavra] ||= 1
    frequencia[palavra] += 1
  end
end

f = frequencia.to_a.sort{|x,y| y[1] <=> x[1]}
f.each do |e|
  puts "palavra:#{e[0]} - frequencia #{e[1]}"
  
end

