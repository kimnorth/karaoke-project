require('minitest/autorun')
require('minitest/rg')
require_relative('../viewer.rb')

class TestViewer < MiniTest::Test

  def setup
    @new_viewer = Viewer.new()
    @main_menu_options = ["View Bookings", "View Rooms", "Exit"]
    @bookings_menu_options = ["Current Bookings", "Add/Remove Booking", "Main Menu"]
    @rooms_menu = ["List Rooms", "Create Room", "Delete Room", "Menu Menu"]
  end

  def test_return_welcome_message
    assert_equal("Karaoke Management System", @new_viewer.welcome)
  end

  def test_return_main_menu
    assert_equal(@main_menu_options, @new_viewer.main_menu)
  end

  def test_return_menu_choice
    assert_equal(1, @new_viewer.menu_choice)
  end

  def test_return_bookings_menu
    assert_equal(@bookings_menu_options, @new_viewer.bookings_menu_options)
  end

  def test_return_rooms_menu
    assert_equal(@rooms_menu, @new_viewer.rooms_menu_options)
  end

end