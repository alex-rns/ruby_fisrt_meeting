print "(R)ock, (S)cissors, (P)aper? "
s = gets.strip.capitalize

if s == "R"
  user_choice = :rock
elsif s == "S"
  user_choice = :scissors
elsif s == "P"
  user_choice = :paper
else
  puts "Can't understand what you want, sorry..."
  exit
end

arr = [:rock, :scissors, :paper]

computer_choice = arr[rand(0..2)]
sleep 1
puts "Your choice is #{user_choice}"
sleep 1
puts "Computer choice is #{computer_choice}"

matrix = [
    [:rock, :scissors, :user_win],
    [:rock, :paper, :comp_win],
    [:rock, :rock, :draw],
    [:scissors, :rock, :comp_win],
    [:scissors, :paper, :user_win],
    [:scissors, :scissors, :draw],
    [:paper, :rock, :user_win],
    [:paper, :scissors, :comp_win],
    [:paper, :paper, :draw]
]

matrix.each do |item|
  if item[0] == user_choice && item[1] == computer_choice
    case item[2]
    when :user_win
      puts "You win!"
    when :comp_win
      puts "Computer win!"
    else
      puts "Draw!"
    end
    # if item[2] == :user_win
    #   puts "Вы выиграли!"
    # elsif  item[2] == :comp_win
    #   puts "Компьютер выиграл!"
    # else item[2] == :draw
    #   puts "Ничья!"
    # end
    exit
  end
end