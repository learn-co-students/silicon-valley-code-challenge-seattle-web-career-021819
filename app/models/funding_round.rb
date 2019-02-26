class FundingRound
  attr_accessor :startup, :capitalist, :investment, :type

  @@all = []

def initialize(capitalist, startup, investment)
  @startup = startup
  @capitalist = capitalist
  @investment = investment
  @type = type

  @@all << self
end

def self.all
  @@all
end

end
