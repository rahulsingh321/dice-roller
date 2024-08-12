require_relative 'simulator'

def main
  if ARGV.empty?
    puts "Usage: ruby cli.rb <sides1> <sides2> ..."
    exit
  end

  sides     = ARGV.map(&:to_i)
  simulator = Simulator.new(sides)
  result    = simulator.roll

  puts "Rolled: #{result[:description]}"
  result[:results].each_with_index do |value, index|
    puts "Die #{index + 1}: #{value}"
  end
  puts "Total: #{result[:total]}"
end

main
