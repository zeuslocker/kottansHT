class Superhero
    include Comparable
    attr_accessor :name, :strength, :agility, :intelligence
    def initialize name, strength, agility, intelligence
        @name = name
        @strength = strength
        @agility = agility
        @intelligence = intelligence
    end
    def <=>(other)
       (@strength + @agility + @intelligence) <=> (other.strength + other.agility + other.intelligence)
     
    end
end
pudge = Superhero.new 'Pudge', 55, 29, 33
#puts pudge.name
pudge2 = Superhero.new 'Pudge2', 55, 29, 34
#puts pudge.class
#puts pudge == pudge2
puts pudge < pudge2