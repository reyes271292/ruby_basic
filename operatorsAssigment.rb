valorA,valorB,nueva = 10,20,0

puts "\t Asignacion multiple"
puts "valorA = #{valorA}"
puts "valorB = #{valorB}"
puts "nueva = #{nueva}"

puts "\t\vOperadores de asignacion"
puts "Asignacion simple nueva= "+(nueva=valorA).to_s
puts "Suma y asigna nueva+= "+(nueva+=valorA).to_s
puts "Resta y asigna nueva+= "+(nueva-=valorA).to_s
puts "Multiplica y asigna nueva*= "+(nueva*=valorA).to_s
puts "Divide y asigna nueva/= "+(nueva/=valorA).to_s
puts "Exponente y asigna nueva**= "+(nueva**=valorA).to_s
puts "Modulo y asigna nueva%= "+(nueva%=valorA).to_s
