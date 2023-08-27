puts "*************** MULTI-PROGRAMAS ***************"
puts "Escolha o que deseja fazer: "
puts 'Para calcular sua Taxa de Metabolismo Basal, digite: "tmb".'
puts 'Para o cálculo de proteína pra cd pessoa, digite: "cpp".'
puts 'Para o cálculo de carbo pra cd pessoa, digite: "ccp".'
puts 'Para o cálculo de gordura por pessoa, digite: "cgp".'

programa = gets.chomp

case programa
when "tmb"
  puts "*************** Sua Taxa de Metabolismo Basal ***************"
  puts "ALERT: PROIBIDO VIADO"
  puts "Primeiramente, indique sua sexualidade: "
  puts "Opcões dísponiveis: M/F"
  puts "M = Masculino / F = Feminino"
  sexo = gets.chomp

  puts "Agora, informe seu peso: (Em KG)"

  pesoIndividuo = gets.chomp.to_i

  puts "Agora, informe sua altura: (Em CM)"

  alturaIndividuo = gets.chomp.to_i

  puts 'E por fim, informe sua idade: '

  idadeIndividuo = gets.chomp.to_i


  case sexo
  when "M"
    resultado = 66 + (13.7 * pesoIndividuo) + (5.0 * alturaIndividuo) - (6.8 * idadeIndividuo)
    puts "Sua Taxa de Metabolismo Basal é: #{resultado}KCAL"
  else
    puts "Opção de sexo inválida."
  end
when "cpp"
  puts "*************** CÁLCULO DE PROTEÍNA P/ CD PESSOA ***************"
  print "Você está em bullking(b) ou cutting(c)?: "
  bulOrCut = gets.chomp
  if bulOrCut == "b"
    puts 'Digite seu peso em KG: '
    pesoProteinas = gets.chomp.to_i
    resultadoProteinas = 2.0 * pesoProteinas
    print "Você precisa consumir #{resultadoProteinas} proteínas p/ dia."
  else
    puts 'Digite seu peso em KG: '
    pesoProteinas = gets.chomp.to_i
    resultadoProteinas2 = 1.6 * pesoProteinas
    print "Você precisa consumir #{resultadoProteinas2} proteínas p/ dia."
    end

when "ccp"
  puts "*************** CÁLCULO DE CARBOIDRATOS P/ CD PESSOA ***************"
  print "Você está em bullking(b) ou cutting(c)?: "
  bulOrCut2 = gets.chomp
  if bulOrCut2 == "b"
    puts 'Digite seu peso em KG: '
    pesoCarbo = gets.chomp.to_i
    resultadoCarbo = 2.0 * pesoCarbo
    print "Você precisa consumir #{resultadoCarbo} carboidratos p/ dia."
  else
    puts 'Digite seu peso em KG: '
    pesoCarbo2 = gets.chomp.to_i
    resultadoCarbo2 = 1.8 * pesoCarbo2
    print "Você precisa consumir #{resultadoCarbo2} carboidratos p/ dia."
  end

when "cgp"
  puts "*************** CÁLCULO DE GORDURA P/ CD PESSOA ***************"
  print "Você está em bullking(b) ou cutting(c)?: "
  bulOrCut1 = gets.chomp
  if bulOrCut1 == "b"
    puts 'Digite seu peso em KG: '
    pesoGordura = gets.chomp.to_i
    resultadoGorduras = 1.6 * pesoGordura
    print "Você precisa consumir #{resultadoGorduras} gorduras p/ dia."
  else
    puts 'Digite seu peso em KG: '
    pesoGordura2 = gets.chomp.to_i
    resultadoGorduras2 = 1.2 * pesoGordura2
    print "Você precisa consumir #{resultadoGorduras2} gorduras p/ dia."
  end

else
  puts "Opção inválida. Escolha entre 'tmb', 'cpp', 'cgp' ou 'ccp'."
end
