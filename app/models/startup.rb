class Startup

  attr_reader :venture_capitalist
  attr_accessor :founger, :name, :domain

  @@all = []

  def initialize(name, founder, domain= "Buisness")
    @name = name
    @founder = founder
    @domain = domain

    @@all << self

  end

  def self.all
    @@all
  end

  def self.find_by_founder(founder)
    @@all.find do |startup|
      founder
    end
  end

  def self.domains
    result = @@all.map do |startup|
        startup.domain
    end
    result
  end

  def pivot(name, domain)
    self.domain = domain
    self.name = name
  end

  def sign_contract(venture_capitalist, type, investment)
    FundingRound.new(self, venture_capitalist, type, investment)
  end

  def num_funding_rounds
    result = FundingRound.all.select do |round|
      round.startup == self
    end
    result.length
  end

  def total_funds
    result = FundingRound.all.map do |round|
      round.investment
    end
    result.inject(0) do |sum, num|
      sum + num
    end
  end

  def investors
    results = FundingRound.all.select do |round|
      round.startup == self
    end
    output = results.collect do |investor|
      investor.venture_capitalist.name
    end
    output.uniq
  end

  def big_investors
    results = FundingRound.all.select do |round|
      round.venture_capitalist.total_worth > 1000000000
    end
    output = results.collect do |investor|
        investor.venture_capitalist.name
    end
    output.uniq
  end


end
