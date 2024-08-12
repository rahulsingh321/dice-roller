require 'rspec'
require_relative '../dice'

RSpec.describe Dice do
  describe '#roll' do
    it 'returns a value between 1 and the number of sides' do
      sides = [4, 6, 8, 10, 20]
      sides.each do |side|
        dice  = Dice.new(side)
        rolls = Array.new(1000) { dice.roll }
        expect(rolls.all? { |value| value.between?(1, side) }).to be true
      end
    end
  end
end
