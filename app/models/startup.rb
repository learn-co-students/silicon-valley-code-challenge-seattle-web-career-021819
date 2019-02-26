class Startup
  attr_reader :founder, :domain
  attr_accessor :name, :pivot

  @@all =[]

    def initialize(name, founder, domain)
      @name=name
      @founder=founder
      @domain = domain
      @pivot = domain, name
      @@all<< self
    end

    def self.all
      @@all
    end

    def self.find_by_founder(founder)
      @@all.find{|startup|startup.founder==self}
    end

    def self.domain
      @@all.map {|company|company.domain}
    end
    # def self.domain
    #   @@all.map do |company|
    #   company.domain
    #   end (alternative method)
    # end

    def sign_contract
      funding_round.new.all.map{|investment|investment.type==venture_capitalist}
    end

    def num_funding_rounds

    end

    def total_funds

    end

    def investors

    end

    def big_investors

    end


  end
