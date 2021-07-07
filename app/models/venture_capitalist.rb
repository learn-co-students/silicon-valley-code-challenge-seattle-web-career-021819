class VentureCapitalist
  attr_reader :name, :total_worth

  @@all = []

  # INSTANCE METHODS

  def initialize(name, total_worth)
    @name = name
    @total_worth = total_worth
    @@all << self
  end

  def offer_contract(startup, type, investment)
    FundingRound.new(startup, self, type, investment)
  end

  def funding_rounds
    FundingRound.all.select do |xx|
      xx.venture_capitalist == self
    end
  end

  def portfolio
    self.funding_rounds.collect do |xx|
      xx.startup
    end.uniq
  end

  def biggest_investment
    most = nil
    investment = nil
    self.funding_rounds.collect do |xx|
      if most == nil
        most = xx.investment
        investment = xx
      elsif xx.investment > most
        most = xx.investment
        investment = xx
      end
    end
    investment
  end

  def invested(domain)
    tot = 0
    self.funding_rounds.select do |xx|
      if xx.startup.domain == domain
        tot += xx.investment
      end
    end
    tot
  end

  # CLASS METHODS

  def self.all
    @@all
  end

  def self.tres_commas_club
    self.all.select do |xx|
      xx.total_worth >= 1000000000
    end
  end

end
