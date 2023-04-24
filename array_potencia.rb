print 'Digite o primeiro numero: ' 
num = gets.chomp.to_i
print  'Digite o segundo numero: ' 
num1 = gets.chomp.to_i
print  'Digite o terceito numero: ' 
num2 = gets.chomp.to_i
all = [num,num1,num2]

potencia= all.map do |a| 
  a ** a
 
end

puts "#{potencia}"
