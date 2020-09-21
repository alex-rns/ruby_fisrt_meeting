puts 'Здравствуйте и добро пожаловать в 7-й класс на урок английского.'
puts 'Меня зовут миссис Габбард.  А тебя зовут...?'
name = gets.chomp

if name == name.capitalize
  puts 'Садись, пожалуйста, ' + name + '.'
else
  puts name + '?  Ты имел в виду: ' + name.capitalize + ', не так ли?'
  puts 'Ты что, даже не знаешь, как пишется твоё имя??'
  reply = gets.chomp

  if reply == 'да'
    puts 'Хммм!  Ну хорошо, садись!'
  else
    puts 'УБИРАЙСЯ ВОН!!'
  end
end