require_relative('./database.rb')
require_relative('./party.rb')
require_relative('./room.rb')

# importing other classes
@main_database = Database.new()
#

class Runner

  attr_reader :welcome, :main_menu, :bookings_menu
  attr_accessor :rooms_menu
  def initialize(database)
    @welcome = "Karaoke Management System"
    @main_menu = ["View Bookings", "View Rooms", "Exit"]
    @bookings_menu = ["Current Bookings", "Add/Remove Booking", "Main Menu"]
    @rooms_menu = ["View Rooms", "Add Room", "Delete Room", "Main Menu"]
    @list_of_all_current_bookings = []
    @database = database
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

  def rooms_menu_options
    return @rooms_menu.each_with_index { |item, index| puts "#{index + 1}: #{item}" }
  end

  def display_greeting
    puts @welcome
    main_menu()
    return menu_choice()
  end

  def bookings_menu()
    puts @welcome
    bookings_menu_options()
    return menu_choice()
  end

  def bookings_menu_sub_current()
    return @list_of_all_current_bookings
  end

  def rooms_menu()
    puts @welcome
    rooms_menu_options()
    return menu_choice
  end

  def get_room_list()
    my_list = @database.room_list
    for item in my_list
      puts item.room_name
    end
  end

  def add_room_to_list()
    puts "Enter name of new room: "
    user_input_room_name = gets.chomp
    puts "Enter capacity of new room: "
    user_input_capacity = gets.chomp
    @new_room = Room.new(user_input_room_name, user_input_capacity)
    @database.add_room(@new_room)
  end

  def remove_room_from_list() # not working - need to delete the object, not a string
    puts "Type name of room to delete: "
    user_input_room_name = gets.chomp
    @database.remove_room(user_input_room_name)
  end

end

@main_runner = Runner.new(@main_database)


def run_program
  # show main menu
  main_menu_choice = @main_runner.display_greeting
  
  if main_menu_choice == 1
    @main_runner.bookings_menu_options()
    bookings_menu_choice = @main_runner.bookings_menu # Bookings Menu
    if bookings_menu_choice == 1
      @main_runner.bookings_menu_sub_current()
    elsif bookings_menu_choice == 3
      return false
    end

  elsif main_menu_choice == 2
    rooms_menu_choice = @main_runner.rooms_menu() # Room Menu
    if rooms_menu_choice == 1
      return @main_runner.get_room_list()
    elsif rooms_menu_choice == 2
      @main_runner.add_room_to_list
    elsif rooms_menu_choice == 3
      @main_runner.remove_room_from_list
    elsif rooms_menu_choice == 4
      return false
    end
    

  elsif main_menu_choice == 3   # Quit Menu
    puts "Would you like to quit? (y/n)"
    answer = gets.chomp
    if answer == "y"
      return true
    else
      return false
    end
  end
    # if exit, return and then return false  
end




# main loop
quit_program = false

while quit_program == false

  program_exit = run_program()

  if program_exit == true
    quit_program = true
  end

end