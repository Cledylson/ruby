puts "Bem-vindo(a) à calculadora em Ruby"

# Função para adicionar dois números
def soma(a, b)
  return a + b
end

# Função para subtrair dois números
def subtrai(a, b)
  return a - b
end

# Função para multiplicar dois números
def multiplica(a, b)
  return a * b
end

# Função para dividir dois números
def divide(a, b)
  if b == 0
    return "Erro: divisão por zero"
  else
    return a / b
  end
end

# Laço principal da calculadora
loop do
  puts "Digite o primeiro número:"
  num1 = gets.chomp.to_f
  
  puts "Digite o segundo número:"
  num2 = gets.chomp.to_f
  
  puts "Digite a operação (+, -, *, /):"
  operacao = gets.chomp
  
  case operacao
  when "+"
    resultado = soma(num1, num2)
  when "-"
    resultado = subtrai(num1, num2)
  when "*"
    resultado = multiplica(num1, num2)
  when "/"
    resultado = divide(num1, num2)
  else
    puts "Erro: operação inválida"
    next
  end
  
  puts "Resultado: #{resultado}"
  
  puts "Deseja continuar? (s/n)"
  resposta = gets.chomp
  
  if resposta.downcase != "s"
    break
  end
end
