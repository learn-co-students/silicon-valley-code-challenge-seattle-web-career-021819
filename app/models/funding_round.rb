class FundingRound


  attr_accessor :type, :investment
  attr_reader :startup, :venture_capitalist

  @@all = []

  def initialize(startup, venture_capitalist, type, investment)
    @type = type
    @investment = investment
    @venture_capitalist = venture_capitalist
    @startup = startup

    @@all << self

  end

  def self.all
    @@all
  end




end
