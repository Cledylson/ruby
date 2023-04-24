def cadastrar_pessoa
  puts "Digite o nome da pessoa:"
  nome = gets.chomp
  
  puts "Digite o endereço da pessoa:"
  endereco = gets.chomp
  
  puts "Digite o telefone da pessoa:"
  telefone = gets.chomp
  
  puts "Digite o e-mail da pessoa:"
  email = gets.chomp
  
  # Abre o arquivo de texto em modo de adição
  File.open("cadastro.txt", "a") do |arquivo|
    # Escreve as informações da pessoa no arquivo
    arquivo.puts "#{nome},#{endereco},#{telefone},#{email}"
  end
  
  puts "Pessoa cadastrada com sucesso!"
end

# Laço principal do programa
loop do
  puts "O que deseja fazer?"
  puts "1 - Cadastrar uma pessoa"
  puts "2 - Sair"
  opcao = gets.chomp.to_i
  
  case opcao
  when 1
    cadastrar_pessoa
  when 2
    puts "Saindo..."
    break
  else
    puts "Opção inválida"
  end
end
