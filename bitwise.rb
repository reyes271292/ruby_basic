valorA = 0b00001111
valorB = 0b11110000

puts "Operacion binaria AND #{valorA.to_s(10)} & #{valorB.to_s(10)}  "+ (valorA & valorB).to_s
puts "Operacion binaria OR #{valorA.to_s(10)} | #{valorB.to_s(10)}  "+ (valorA | valorB).to_s
puts "Operacion binaria XOR #{valorA.to_s(10)} ^ #{valorB.to_s(10)}  "+ (valorA ^ valorB).to_s
puts "Operacion binaria COMPLEMENTO ~ #{valorB.to_s(10)}  "+ (~ valorB).to_s
puts "Operacion binaria corrimiento a la izquierda << #{valorA.to_s(10)}  "+ (valorA << 2).to_s
puts "Operacion binaria corrimiento a la derecha >> #{valorA.to_s(10)}  "+ (valorA >> 2).to_s
