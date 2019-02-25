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

  # Sets domain and name to the given domain and name
  def pivot(domain, name)
    @domain = domain
    @name = name
  end

  # Creates new fundinground with given VC, string, and float
  def sign_contract(investor, type, funds)
    FundingRound.new(investor, self, type, funds)
  end

  # Helper method that returns all funding rounds of this startup
  def funding_rounds
    FundingRound.all.select {|funding| funding.startup == self}
  end

  # Returns count of all funding rounds by this startup
  def num_funding_rounds
    self.funding_rounds.count
  end

  # Returns float sum of funds invested into this startup
  def total_funds
    self.funding_rounds.inject(0) {|sum, funding| sum+funding.funds}
  end

  # Returns array of unique venturecapitalists that funded this startup
  def investors
    (self.funding_rounds.map {|funding| funding.venture_capitalist}).uniq
  end

  # Returns array of unique venturecapitalists that funded this startup
  # and have over 1 million total worth
  def big_investors
    investors.select do |investor|
      VentureCapitalist.tres_commas_club.include?(investor)
    end
  end

  # Returns the first startup founded by given founder
  def self.find_by_founder(founder)
    self.all.find {|startup| startup.founder == founder}
  end

  # Returns an array of all the domains of startups
  def self.domains
    (self.all.map {|startup| startup.domain}).uniq
  end

  def self.all
    @@all
  end
end
