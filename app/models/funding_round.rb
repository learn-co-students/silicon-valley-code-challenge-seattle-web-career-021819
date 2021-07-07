class FundingRound
  attr_reader :venture_capitalist, :startup, :investment
  attr_accessor :type

  @@all = []

  def initialize(startup, v_c, type, float)
    @startup = startup
    @venture_capitalist = v_c
    @type = type
    @investment = float
    @@all << self
  end

  def investment=(float)
    @investment = [0, float].max
  end

  def self.all
    @@all
  end

end
