# Dice Roller Simulator

## Overview

The Dice Roller Simulator is a Ruby-based application that allows users to simulate rolling multiple dice with various numbers of sides. The project includes a class-based implementation for dice rolling, a command-line interface (CLI) for user interaction, and unit tests to ensure functionality and correctness.

## Features

- **Dice Rolling Simulation**: Roll multiple dice with a specified number of sides.
- **Detailed Results**: Displays individual die results and the total.
- **Command-Line Interface**: Allows users to specify the number of dice and sides via CLI.
- **Unit Testing**: Includes RSpec tests for dice rolling functionality and CLI.

## Installation

To use or contribute to this project, follow these steps:

### Clone the Repository

```sh
git clone https://github.com/rahulsingh321/dice-roller.git
cd dice-roller
```

### Install Dependencies
Ensure you have Ruby installed. Then, install the required gems:

```sh
gem install rspec
```


## Usage

### Dice Rolling
To use the dice rolling functionality programmatically, you can interact with the `Dice` and `Simulator` classes.
```ruby
require_relative 'dice'
require_relative 'simulator'

# Create a simulator with dice of different sides
simulator = Simulator.new([6, 8])
result = simulator.roll

puts "Rolled: #{result[:description]}"
result[:results].each_with_index do |value, index|
  puts "Die #{index + 1}: #{value}"
end
puts "Total: #{result[:total]}"
```

## Command-Line Interface
The CLI allows you to specify how many dice to roll and their respective sides. The CLI script is located in `cli.rb`.

### Usage
```sh
ruby cli.rb <number_of_dice> <side1> <side2> ...
```
### Example:
ruby cli.rb 2 6 8

This command rolls two dice: one with 6 sides and one with 8 sides, displaying each die's result and the total.

### Error Handling:
If you provide incorrect arguments, the CLI will display an error message:
```sh
ruby cli.rb 2 6
```
This will produce an error message: **Error: The number of dice must match the number of sides specified.**

## Testing
The project uses RSpec for unit testing. To run the tests, ensure you have the RSpec gem installed and execute the following command:
```sh
rspec
```
This will run all the test cases defined in the spec directory.



