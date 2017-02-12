class Room
  attr_accessor :room_name, :room_capacity, :current_guests, :song_list, :room_tab

  def initialize(room_name, room_capacity)
    @room_name = room_name
    @room_capacity = room_capacity
    @current_guests = []
    @song_list = {}
    @room_tab = 0
  end

  def add_party_to_room(party)
    if party.party_size <= @room_capacity
      @current_guests.push(party)
    else
      return "Not enough room!"
    end
  end

  def remove_party(party)
    @current_guests.delete(party)
  end

  def add_song(new_song, artist)
    @song_list[new_song] = artist
  end

  def remove_song(song)
    @song_list.delete(song)
  end

  def add_to_tab(cost)
    @room_tab += cost
  end

end