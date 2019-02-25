class FundingRound
  attr_reader :startup, :venture_capitalist
  attr_accessor :type, :funds
  @@all = []

  def initialize(venture_capitalist, startup, type, funds)
    @venture_capitalist = venture_capitalist
    @startup = startup
    @type = type
    @funds = funds
    @@all << self
  end

  def self.all
    @@all
  end
end
