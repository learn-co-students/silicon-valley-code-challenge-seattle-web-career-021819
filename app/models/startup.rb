class Startup

  attr_reader :name, :founder
  attr_accessor :domain

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
     @domain = domain
     @name = name
   end

   def self.find_by_founder(person)
     self.all.find do |startup|
       startup.founder == person
     end
   end

   def self.domains
     self.all.map do |startup|
       startup.domain
     end
   end

   def sign_contract(venture_capitalist, type, investment)

   end

end
