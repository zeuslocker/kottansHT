require '~/workspace/superhero'
require '~/workspace/myEnumerable'
class Team
    attr_accessor :heroArray
    include Enumerable
     include MyEnumerable
    def initialize
        @heroArray =[]
    end
    def addHero superHero
        if superHero.is_a? Superhero
        @heroArray << superHero
        end
    end
    def ==(other)
        other.is_a?(Team) && other.heroArray == @heroArray
    end
    def each 
        k = 0
        until k == @heroArray.size
        yield(@heroArray[k])
        k+=1
        end
       self
    end
end
navi = Team.new
navi.addHero(Superhero.new('Ursa', 34, 4, 32))
navi.addHero(Superhero.new('Lifestealer', 34, 45, 32))
navi.addHero(Superhero.new('Pugna', 26, 30, 42))
navi.addHero(Superhero.new('Io', 31, 24, 25))
navi.addHero(Superhero.new('Alchemist', 50, 45, 22))
alliance = Team.new
alliance.addHero Superhero.new 'Riki', 34, 45, 32
#puts navi == alliance
#navi.each{|x| p x}
#puts navi.map{|x| x.strength*=2}
#puts navi.myReduce(:+)
 x = []
puts x.minmax                       
puts  navi.maxmin[1].name
