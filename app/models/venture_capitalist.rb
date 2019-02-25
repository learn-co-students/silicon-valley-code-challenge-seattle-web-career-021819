class VentureCapitalist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  # Returns the sum of this venturecapitalist's investments
  def total_worth
    self.funding_rounds.inject(0) {|sum, funding| sum+funding.funds}
  end

  # Creates new fundinground with given startup, string, and float
  def offer_contract(startup, type, funds)
    FundingRound.new(self, startup, type, funds)
  end

  # Returns array of fundingrounds that this investor made
  def funding_rounds
    FundingRound.all.select {|funding| funding.venture_capitalist == self}
  end

  # Returns array of unique startups that this investor funded
  def portfolio
    (self.funding_rounds.map {|funding| funding.startup}).uniq
  end

  # Returns biggest fundinground made by this investor
  def biggest_investment
    self.funding_rounds.max_by {|funding| funding.funds}
  end

  # Returns the total investment for given string domain
  def invested(domain)
    investments = self.funding_rounds.select {|funding| funding.startup.domain == domain}
    investments.inject(0) {|sum, funding| sum+funding.funds}
  end

  # Returns an array of all venturecapitalists with more than 1 million
  def self.tres_commas_club
    self.all.select {|investor| investor.total_worth > 1000000}
  end

  def self.all
    @@all
  end
end
