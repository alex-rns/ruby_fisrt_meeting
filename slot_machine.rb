print 'Ваш возраст: '
age = gets.to_i
if age < 18
  puts 'Сожалеем, но вам нет 18'
  exit
end
def random_animation i
  5.times do
    i = rand(0..5)
    print i
    sleep 0.3
    print "\b"
  end
  print i
  print "  "
end
balance = 20
loop do
  puts 'Нажмите Enter, чтобы дернуть ручку...'
  gets
  print "Результат: "
  random_animation @x
  random_animation @y
  random_animation @z
  puts
  if @x == 0 && @y == 0 && @z == 0
    balance = 0
    puts 'Ваш баланс обнулен'
  elsif @x == 1 && @y == 1 && @z == 1
    balance += 10
    puts 'Баланс увеличился на 10 долларов'
  elsif @x == 2 && @y == 2 && @z == 2
    balance += 20
    puts 'Баланс увеличился на 20 долларов'
  else
    balance -= 0.5
    puts 'Баланс уменьшился на 50 центов'
  end
  puts "Ваш баланс: #{balance} долларов"
end