require_relative('./database.rb')
require_relative('./party.rb')
require_relative('./room.rb')

class Runner

  attr_reader :welcome, :main_menu, :bookings_menu
  attr_accessor :rooms_menu
  def initialize()
    @welcome = "Karaoke Management System"
    @main_menu = ["View Bookings", "View Rooms", "Exit"]
    @bookings_menu = ["Current Bookings", "Add/Remove Booking", "Main Menu"]
    @rooms_menu = []
  end

  def main_menu
    return @main_menu.each_with_index { |item, index| puts "#{index + 1}: #{item}" }
  end

  def menu_choice
    print "Please select a choice: "
    choice = gets.chomp
    return choice.to_i
  end

  def bookings_menu_options
    return @bookings_menu.each_with_index { |item, index| puts "#{index + 1}: #{item}" }
  end
end

@main_runner = Runner.new

def display_greeting
  puts @main_runner.welcome
  @main_runner.main_menu
  return @main_runner.menu_choice
end

def bookings_menu()
  puts @main_runner.welcome
  @main_runner.bookings_menu_options
  return @main_runner.bookings_menu
end

main_menu_choice = display_greeting

case main_menu_choice
when 1 
  bookings_menu()
end