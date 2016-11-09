class Human
  attr_accessor :name
  def to_drink(some_drink)
    "#{@name} agrees to drink some #{some_drink.name} with you!"
  end

  def is_a?
    'Human'
  end

  def invite(human)
    human
  end
end
class Drink
  attr_accessor :name
  def is_a?
    'Drink'
  end
end
volodya = Human.new
volodya.name = 'Volodya'
ira = Human.new
ira.name = 'Olena'
coffee = Drink.new
coffee.name = 'Tea'
puts volodya.invite(ira).to_drink coffee
