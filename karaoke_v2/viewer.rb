# Everything the user sees

class Viewer
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

  # def rooms_menu_options

  # end
end