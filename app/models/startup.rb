
class Startup
  attr_reader :name, :founder, :domain
  attr_accessor :pivot

  @@all = []

  def initialize(name, founder, domain)
    @name=name
    @founder=founder
    @domain=domain
    @pivot=pivot
  @@all << self
  end

  def self.all
    @@all
  end

  def pivot
    FundingRound.new(domain, name)
  end

  def self.find_by_founder
    FundingRound.all.first{|founder|founder.startup==self}
  end


  def self.domains
    FundingRound.all.map{|startup|startup.domain}
  end

  def sign_contract
    FundingRound.all.select{|investment|investment.venture_capitalist==self}
  end

  def num_funding_rounds
    self.sign_contract.map{|funding|funding.self}
  end

  def total_funds
    array= self.num_funding_rounds.map{|funds|funds.total_funds}
    array.inject(0,:+)
  end

  def big_investors
    FundingRound.all.select{|venture_capitalist|venture_capitalist}

  end


  def big_investors

  end.


end
