class FundingRound
  attr_reader :startup, :venture_capitalist
  attr_accessor :type, :investment

  @@all= []

  def initialize
    @startup=startup
    @venture_capitalist=venture_capitalist
    @type=type
    @investment=num
    @@all << self
  end
  

  def self
    @@all
  end

end
