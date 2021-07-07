class VentureCapitalist
  attr_accessor :name, :total_worth
  attr_reader :tres_comma

  @@all = []

  def initialize(name, total_worth)
    @name = name
    @total_worth = total_worth

    if total_worth > 1000000000.0
      @tres_comma = true
    else
      @tres_comma = false
    end

    @@all << self
  end

  def self.all
    @@all
  end

  def self.tres_comma_club
    @@all.select { |v_c| v_c.tres_comma == true }
  end

  def offer_contract(startup_instance, type_string, float)
    FundingRound.new(startup_instance, self, type_string, float)
  end

  def funding_rounds
    FundingRound.all.select { |fr_instance| fr_instance.venture_capitalist == self }
  end

  def portfolio
    startup_list = []
    fr_list = self.funding_rounds
    startup_list = fr_list.map { |fr_instance| fr_instance.startup }
    startup_list.uniq
  end

  def biggest_investment
    biggest_amt = 0
    biggest_inv = nil
    fr_list = self.funding_rounds
    fr_list.each do |fr_instance|
      if fr_instance.investment > biggest_amt
        biggest_amt = fr_instance.investment
        biggest_inv = fr_instance
      end
    end
    biggest_inv
  end

  def invested(domain_string)
    domain_amt = 0
    fr_list = self.funding_rounds
    fr_list.each do |fr_instance|
      if fr_instance.startup.domain == domain_string
        domain_amt += fr_instance.investment
      end
    end
    domain_amt
  end

end
