class OrangeTree

  def initialize
    @year = 0
    @height = 0
    @oranges_count = 0
  end
  def height
    puts "Высота дерева #{@height} м."
  end

  def orangesCount
    puts "Колличество апельсинов на дереве: #{@oranges_count}"
  end

  def pickOrange
    if @oranges_count >0
      @oranges_count = @oranges_count - 1
      puts "Сорвали один апельсин. Очень вкусно! На дереве осталось #{@oranges_count}."
    else
      puts "Нет апельсинов для сбора в этом году."
    end
  end

  def oneYearPasses
    @oranges_count = 0
    @year = @year +1
    @height = @height + 0.3
    right_write_year = 'лет'
    if @year == 1
      right_write_year = "год"
    elsif @year == 2 or @year == 3 or @year == 4
      right_write_year = "года"
    end
    puts "Прошёл один год. Возраст дерева составил #{@year} #{right_write_year}. Высота дерева - #{@height} м."
    if @year >= 3
      @oranges_count = @oranges_count + 5
    end
    if @year >=7
      @oranges_count =@oranges_count + 9
    end
    if @year >=10
      @oranges_count = @oranges_count + 15
    end

    if @year == 15
      puts "Дерево умерло."
    end
  end
end

tree = OrangeTree.new
tree.oneYearPasses
tree.oneYearPasses
tree.oneYearPasses
puts tree.orangesCount
puts tree.pickOrange
puts tree.pickOrange
puts tree.pickOrange
puts tree.pickOrange
puts tree.pickOrange
puts tree.pickOrange