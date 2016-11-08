require 'rspec'
require_relative '1.rb'
describe '1 Superhero' do
  
    it 'should return true' do
          pudge = Superhero.new 'Pudge', 55, 29, 33
    mirana = Superhero.new 'Pudge2', 55, 29, 34
        expect(pudge == mirana).to eq(false)  
    end
    it 'should be equal' do
          pudge = Superhero.new 'Pudge', 55, 29, 34
    mirana = Superhero.new 'Pudge2', 55, 29, 34
    expect(mirana == pudge).to eq(true)
    end
end