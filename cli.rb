require_relative 'simulator'

def parse_args(args)
  dice_count = args[0].to_i
  sides      = args[1..-1].map(&:to_i)

  raise 'Number of dice should be positive.' if dice_count <= 0
  raise 'At least one side count must be specified.' if sides.empty?
  raise 'Number of sides must be positive.' if sides.any? { |side| side <= 0 }

  if sides.size != dice_count
    raise 'The number of dice must match the number of sides specified.'
  end

  sides
end

def main
  if ARGV.empty?
    puts 'Usage: ruby cli.rb <number_of_dice> <side1> <side2> ...'
    exit
  end

  begin
    sides     = parse_args(ARGV)
    simulator = Simulator.new(sides)
    result    = simulator.roll

    puts "Rolled: #{result[:description]}"
    result[:results].each_with_index do |value, index|
      puts "Die #{index + 1}: #{value}"
    end
    puts "Total: #{result[:total]}"
  rescue StandardError => e
    puts "Error: #{e.message}"
    exit
  end
end

main
