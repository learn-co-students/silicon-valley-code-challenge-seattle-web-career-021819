class Startup
  attr_reader :founder
  attr_accessor :name, :domain

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

  def pivot(domain, name)
    self.domain = domain
    self.name = name
    puts "kirby.domain successfully changed to \"#{self.domain}\"."
    puts "kirby.name successfully changed to \"#{self.name}\"."
  end

  def self.find_by_founder(f_name)
    Startup.all.find { |startup_instance| startup_instance.founder == f_name }
  end

  def self.domains
    domain_list = @@all.map { |startup| startup.domain }
    domain_list.uniq
  end

  def sign_contract(v_c, type_string, float)
    FundingRound.new(self, v_c, type_string, float)
  end

  def num_funding_rounds
    FundingRound.all.select{|fr_instance| fr_instance.startup == self}.count
  end

  def total_funds
    funds = 0
    FundingRound.all.each do |fr_instance|
      if fr_instance.startup == self
        funds += fr_instance.investment
      end
    end
    funds
  end

  def investors
    investor_array = []
    FundingRound.all.each do |fr_instance|
      if fr_instance.startup == self
        investor_array << fr_instance.venture_capitalist
      end
    end
    investor_array.uniq
  end

  def big_investors
    investor_array = self.investors
    investor_array.select{ |v_c| v_c.tres_comma == true}
  end

end
