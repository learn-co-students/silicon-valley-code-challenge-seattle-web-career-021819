class FundingRound

  attr_accessor :type
  attr_reader :startup, :venture_capitalist, :amount

  @@all = []

  def initialize(startup,vc,type,amount)
    @startup = startup
    @venture_capitalist = vc
    @type = type
    @amount = amount
    @@all << self
  end

  def self.all
    @@all
  end

end
