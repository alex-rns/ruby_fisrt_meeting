input = 'nil'
arr = []
while input != ""
  puts "Ведите слово:"
  input = gets.chomp
  arr = arr.push(input)
  if input == ""
    puts "Ваши слова в алфавитном порядке:"
    puts arr.sort.join(' ')
  end
end