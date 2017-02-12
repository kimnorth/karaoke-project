class Party
  
  attr_reader :party_name, :party_size, :party_money

  def initialize(party_name, party_size, party_money)
    @party_name = party_name
    @party_size = party_size
    @party_money = party_money
  end

end