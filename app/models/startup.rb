class Startup

  attr_accessor :name, :domain
  attr_reader :founder

  @@all = []

  def initialize(name, founder, domain)
    @name = name
    @founder = founder
    @domain = domain
    @@all << self
  end

  def self.all
    @@all
  end

  def pivot(domain,name)
    @domain = domain
    @name = name
  end

  def funding_rounds
    FundingRound.all.select do |fr|
      fr.startup == self
    end
  end

  def self.find_by_founder(founder)
    arr = FundingRound.all.select do |fr|
      fr.startup.founder == founder
    end
    arr[0].startup.name
  end

  def self.domains
    arr = []
    FundingRound.all.each do |fr|
      arr << fr.startup.domain
    end
    arr.uniq
  end

  def sign_contract(vc,type,amount)
    FundingRound.new(self,vc,type,amount)
  end

  def num_funding_rounds
    self.funding_rounds.count
  end

  def total_funds
    total = 0
    self.funding_rounds.each do |fr|
      total += fr.amount
    end
    total
  end

  def investors_object
    self.funding_rounds.map do |fr|
      fr.venture_capitalist
    end
  end

  def investors
    self.investors_object.uniq.map do |vc|
      vc.name
    end
  end

  def big_investors
    self.investors_object.uniq.select do |vc|
      vc.total_worth > 1000000000
    end
  end

end
