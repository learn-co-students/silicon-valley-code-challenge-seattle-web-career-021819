class FundingRound
  attr_reader :startup, :venture_capitalist, :type, :investment

  @@all = []

  # INSTANCE METHODS

  def initialize(startup, venture_capitalist, type, investment)
    @startup = startup
    @venture_capitalist = venture_capitalist
    @type = type
    @investment = investment
    @@all << self
  end

  # CLASS METHODS

  def self.all
    @@all
  end

end
