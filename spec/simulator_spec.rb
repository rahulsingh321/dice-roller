require 'rspec'
require_relative '../simulator'

RSpec.describe Simulator do
  describe '#roll' do
    it 'returns a result with a correct description, results, and total' do
      simulator = Simulator.new([6, 8])
      result = simulator.roll

      expect(result[:description]).to eq('Die 1 (6 sides), Die 2 (8 sides)')
      expect(result[:results].size).to eq(2)
      expect(result[:results].all? { |value| value.between?(1, 8) }).to be true
      expect(result[:total]).to eq(result[:results].sum)
    end
  end
end
