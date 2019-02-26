class Startup
  @@all = []

  attr_reader :founder
  attr_accessor :name, :domain

  def initialize(name, founder, domain)
    @name = name
    @founder = founder
    @domain = domain
    @@all << self
  end

  def pivot(domain, name)
    @domain = domain
    @name = name
  end

  def self.find_by_founder(founder)
    @@all.find do |company|
      company.founder == founder
    end
  end

  def self.domains
    @@all.map do |company|
      company.domain
    end
  end

  def self.all
    @@all
  end
end
