class VentureCapitalist
  attr_accessor :name, :total_worth

  @@all = []

  def initialize(name, total_worth)
    @name = name
    @total_worth = total_worth
    @@all << self
  end

  def self.all
    @@all
  end

  def self.tres_commas_club
    @@all.select do |capitalist|
      capitalist.total_worth > 1_000_000_000
  end
end

def offer_contract (startup, investment, type)
  new_fr = FundingRound.new(self, startup, investment)
  new_fr.type = type
end

def my_funding_rounds
  FundingRound.all.select do |fr|
    fr.capitalist == self
  end
end


def funding_rounds
  FundingRound.all.select do |fr|
    fr.capitalist == self
  end.length
end

def portfolio
  startup_list = []
  FundingRound.all.each do |fr|
    if fr.capitalist == self
      startup_list << fr.startup
    end
  end
  return startup_list.uniq
end

def biggest_investment
  largest_round = nil
  self.my_funding_rounds.each do |fr|
    if largest_round == nil
      #binding.pry
      largest_round  = fr
    elsif fr.investment > largest_round.investment
      #binding.pry
      largest_round = fr
    end
    return largest_round
  end
end

def invested(domain)
  investments = []
  self.my_funding_rounds.each do |fr|
    #binding.pry
    if fr.startup.domain == domain
      investments << fr.investment
    end
  end
  return investments.reduce(:+)
end



end
