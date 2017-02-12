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

def run_program
  # show main menu
  main_menu_choice = display_greeting
  
  if main_menu_choice == 1
    bookings_menu_choice = bookings_menu()
  elsif main_menu_choice == 3
    p "Would you like to quit?"
    answer = gets.chomp
    if answer == "y"
      return true
    else
      return false
    end  
  end
  # bookings menu


  # quit
  
end


# main loop
quit_program = false

while quit_program == false

  program_exit = run_program()

  if program_exit == true
    quit_program = true
  end

end