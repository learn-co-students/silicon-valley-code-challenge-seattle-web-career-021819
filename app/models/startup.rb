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

def pivot(name, domain)
  @name = name
  @domain = domain
end

def self.all
  @@all
end

def self.find_by_founder(founder_name)
  @@all.find  do |startup|
    founder_name == startup.founder
  end
end

def self.domains
  @@all.map do |startup|
    startup.domain
  end
end

def sign_contract (capitalist, investment)
  FundingRound.new(capitalist, self, investment)
end

def num_funding_rounds
  FundingRound.all.select do |fr|
    fr.startup == self
  end.length
end

def total_funds
  funds_donated = []
  FundingRound.all.each do |fr|
    if fr.startup == self
      funds_donated << fr.investment
    end
  end
  return funds_donated.reduce(:+)
end

def big_investors
  rich_people = VentureCapitalist.tres_commas_club
  FundingRound.all.select do |fr|
    fr.startup == self && rich_people.include?(fr.capitalist)
  end
end




end
