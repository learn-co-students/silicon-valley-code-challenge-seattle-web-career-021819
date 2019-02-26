class VentureCapitalist
  attr_accessor :name, :total_worth

@@all=[]

  def initialize(name, total_worth)
    @name=name
    @total_worth=total_worth
    @@all << self
  end

  def self.all
    @@all
  end

  def self.tres_commas_club
    @@all.select {|venture_capitalist| venture_capitalist.total_worth > 1_000_000_000}
  end

  def offer_contract
    @type.map do |investment_type|
      @Startup.investor.type << investment
    end
  end

  def num_funding_rounds
      fund_round= FundingRound.all.select{|funds|funds.VentureCapitalist ==self}
      fund_round.map{|name|name.investments}
  end

  def portfolio
    # list =[]
    # portfolio.select.map {||}
  end

  def biggest_investment
    @investors
  end

  def invested
  end





end
