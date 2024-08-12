require_relative 'dice'

class Simulator
  def initialize(dice_config)
    @dices = dice_config.map { |sides| Dice.new(sides) }
  end

  def roll
    results     = @dices.map(&:roll)
    total       = results.sum
    description = dice_description

    { description: description, results: results, total: total }
  end

  private

  def dice_description
    @dices.map.with_index do |die, index|
      "Die #{index + 1} (#{die.instance_variable_get(:@sides)} sides)"
    end
    .join(', ')
  end
end
