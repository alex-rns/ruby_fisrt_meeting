arr1 = Array.new(10, 1)
arr2 = Array.new(10, 1)

def strike arr
  i = rand(0..9)
  if arr[i] == 1
    arr[i] = 0
    puts "Робот по индексу #{i} убит"
  else
    puts 'Промазали!'
  end
end

def check arr
  x = arr.count do |y|
    y == 1
  end
  if x == 0
    puts "Команда побеждена!"
    exit
  end
  puts "В команде #{x} единиц"
end

loop do
  print "Комманда 2 стреляет: "
  strike arr1
  print "Проверяем потери первой команды: "
  check arr1
  p arr1
  puts

  print "Комманда 1 стреляет: "
  strike arr2
  print "Проверяем потери втророй команды: "
  check arr2
  p arr2
  puts
end
