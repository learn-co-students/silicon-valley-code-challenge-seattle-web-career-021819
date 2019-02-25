class Startup
  attr_reader :founder, :domain
  attr_accessor :name, :pivot

  @@all =[]

    def initialize
      @founder=founder
      @domain=domain
      @name=name
      @domain = []
      @pivot= (domain, name)
      @@all<< self
    end

    def self
      @@all
    end

    def self.find_by_founder(founder)
      @@all.find{|startup|startup.founder==founder}
    end

    def sign_contract

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
