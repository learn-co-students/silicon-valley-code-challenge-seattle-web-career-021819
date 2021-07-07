class FundingRound
  @@all = []

  attr_reader :startup, :venture_capitalist, :type, :investment

  def initialize(startup, venture_capitalist, type, investment)
    @startup = startup
    @venture_capitalist = venture_capitalist
    @type = type
    @investment = zero_if_negative(investment)
    @@all << self
  end

  def zero_if_negative(investment)
    if investment < 0
      0
    else
      investment
    end
  end

  def investment=(investment)
    @investment = self.zero_if_negative(investment)
  end

  def self.all
    @@all
  end

end
