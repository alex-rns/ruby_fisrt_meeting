puts "Скажите что-либо глуховатой бабуле:"
command = ''
while command !="ПОКА"
  command = gets.chomp
  command_upper = command.upcase
  if command == command_upper && command !="ПОКА"
    puts 'НЕТ, НИ РАЗУ С '+rand(1930..1950).to_s+' ГОДА!'
  elsif  command == "ПОКА"
    puts 'АГА, ПОКА!'
  else
    puts 'АСЬ?! ГОВОРИ ГРОМЧЕ, ВНУЧЕК!,'
  end
end
