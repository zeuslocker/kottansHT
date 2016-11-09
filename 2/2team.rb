require '~/workspace/superhero'
require '~/workspace/myEnumerable'
class Team
  attr_accessor :hero_array
  include Enumerable
  include MyEnumerable
  def initialize
    @hero_array = []
  end

  def add_hero(super_hero)
    @hero_array << super_hero if super_hero.is_a? Superhero
  end

  def ==(other)
    other.is_a?(Team) && other.hero_array == @hero_array
  end

  def each
    k = 0
    until k == @hero_array.size
      yield(@hero_array[k])
      k += 1
    end
    self
  end
end
navi = Team.new
navi.add_hero(Superhero.new('Ursa', 34, 4, 32))
navi.add_hero(Superhero.new('Lifestealer', 34, 45, 32))
navi.add_hero(Superhero.new('Pugna', 26, 30, 42))
navi.add_hero(Superhero.new('Io', 31, 24, 25))
navi.add_hero(Superhero.new('Alchemist', 50, 45, 22))
alliance = Team.new
alliance.add_hero Superhero.new 'Riki', 34, 45, 32
# puts navi == alliance
# navi.each{|x| p x}
# puts navi.map{|x| x.strength*=2}
# puts navi.myReduce(:+)
x = []
puts x.minmax
puts navi.maxmin[1].name
