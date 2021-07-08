class VentureCapitalist


  attr_accessor :total_worth
  attr_reader :name

  @@all = []

  def initialize(name, total_worth)
    @total_worth = total_worth
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.tres_commas_club
    result = @@all.select do |v_capitalist|
      v_capitalist.total_worth > 1000000000
    end
    output = result.map do |person|
      person.name
    end
    output
  end

  def offer_contract(startup, type, investment)
    FundingRound.new(startup, self, type, investment)
  end

  def funding_rounds
    result = FundingRound.all.select do |round|
      round.venture_capitalist == self
    end
    result
  end

  def portfolio
    result = FundingRound.all.select do |round|
      round.venture_capitalist == self
    end
    output = result.map do |round|
      round.startup
    end
    output.uniq
  end

  def biggest_investment
    result = FundingRound.all.select do |round|
      round.venture_capitalist == self
    end
    output = ""
    result1 = 0
    result.each do |round|
      if round.investment > result1
        result1 = round.investment
        output = round
      end
    end
    output
  end

  def invested(domain)
    result = FundingRound.all.select do |round|
      round.type == domain
    end
    output = result.map do |round|
      round.investment
    end
    output.inject(0) do |sum, num|
      sum + num
    end
  end

end
