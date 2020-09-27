@sum = 0
def ask question
  puts question
  answer = gets.chomp
  if answer == "y"
    @sum = @sum +1
  end
end

ask "У вас есть высшее образование? (y/n)"
ask "У вас есть опыт работы программистом? (y/n)"
ask "У вас более трех лет опыта? (y/n)"

if @sum >= 2
  puts "Добро пожаловать в США"
end