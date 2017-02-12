class Party
  
  attr_reader :party_name, :party_size, :party_money, :favourite_song

  def initialize(party_name, party_size, party_money, favourite_song)
    @party_name = party_name
    @party_size = party_size
    @party_money = party_money
    @favourite_song = favourite_song
  end

end