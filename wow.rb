puts "(К)амень - (Н)ожницы - (Б)умага"
puts "Мой выбор:"
input = gets.strip.capitalize
my_choice = ""

sleep 0.5
case input
when "К"
  my_choice = :rock
  puts "Мой выбор - камень"
when "Н"
  my_choice = :scissors
  puts "Мой выбор - ножницы"
when "Б"
  my_choice = :paper
  puts "Мой выбор - бумага"
else
  puts "Неверный ввод"
end

comp_choice = [:rock, :scissors, :paper].sample

sleep 0.5
case comp_choice
when :rock
  comp_choice_rus = "камень"
when :scissors
  comp_choice_rus = "ножницы"
else
  comp_choice_rus = "бумага"
end
puts "Выбор компьютера - #{comp_choice_rus}"

matrix = [
    [:rock, :scissors, :i_win],
    [:rock, :paper, :comp_win],
    [:rock, :rock, :draw],
    [:scissors, :rock, :comp_win],
    [:scissors, :paper, :i_win],
    [:scissors, :scissors, :draw],
    [:paper, :rock, :i_win],
    [:paper, :scissors, :comp_win],
    [:paper, :paper, :draw]
]

sleep 1
matrix.each do |item|
if item[0] == my_choice && item[1] == comp_choice
  case item[2]
  when :i_win
    puts "Я выиграл!"
  when :comp_win
    puts "Комп выиграл!"
    else puts "Ничья!"
  end
end
end