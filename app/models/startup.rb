class Startup
  attr_accessor :name, :domain
  attr_reader :founder, :find_by_founder, :all_domains

  @@all = []
  @@all_domains = []

  # INSTANCE METHODS

  def initialize(name, founder, domain)
    @name = name
    @founder = founder
    @domain = domain
    @@all_domains << domain
    @@all << self
  end

  def pivot(domain, name)
    self.domain = domain
    self.name = name
  end

  def sign_contract(venture_capitalist, type, investment)
    FundingRound.new(self, venture_capitalist, type, investment)
  end

  def num_funding_rounds
    FundingRound.all.select do |xx|
      xx.startup == self
    end.count
  end

  def total_funds
    tot = 0
    FundingRound.all.each do |xx|
      tot += xx.investment if xx.startup == self
    end
    tot
  end

  def investors
    FundingRound.all.select do |xx|
      xx.startup == self
    end.map do |xx|
      xx.venture_capitalist
    end.uniq
  end

  def big_investors
    FundingRound.all.select do |xx|
      xx.startup == self && xx.venture_capitalist.total_worth >= 1_000_000_000
    end.map do |xx|
      xx.venture_capitalist
    end.uniq
  end

  # CLASS METHODS

  def self.all
    @@all
  end

  def self.find_by_founder(founder)
    self.all.find do |xx|
      xx.founder == founder
    end
  end

  def self.domains
    @@all_domains
  end

end
