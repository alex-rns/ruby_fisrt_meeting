number = rand(1..1000000)
print 'Привет! Я загадал число от 1 до ляма, попробуйте угадать: '
loop do
  input = gets.to_i
  if input > number
    print 'Ваше число больше загаданного. Дальше:'
  elsif input < number
    print 'Ваше число меньше загаданного. Дальше:'
  else
    puts "Верно! Загаданное число - #{number}"
    exit
  end
end
