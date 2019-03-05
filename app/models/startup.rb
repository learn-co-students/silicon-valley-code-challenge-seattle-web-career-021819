class Startup

  attr_reader :founder, :domain
  attr_accessor :name
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

  def pivot(name, domain)
    Startup.new(name, self, domain)
  end

  def self.find_by_founder(founder)
    self.all.select { |x| x.founder == founder  }
  end

  def self.domains
    self.all.map { |x| x.domain  }
  end

  #helper class
  def funding_round
      FundingRound.all.select {|x| x.startup == self}
  end

  def sign_contract(vc, type, amount)
    FundingRound.new(vc, self, type, amount)
  end

  def num_funding_rounds
    self.funding_round.count
  end

  def total_funds
    funds = 0
    FundingRound.all.each do |x|
      if x.startup == self
        funds += x.investment
      end
    end
    funds
  end


end




# - `Startup#total_funds`
#   - Returns the total sum of investments that the startup has gotten
# - `Startup#investors`
#   - Returns a **unique** array of all the venture capitalists that have invested in this company
# - `Startup#big_investors`
#   - Returns a **unique** array of all the venture capitalists that have invested in this company and are in the Trés Commas club
