class Owner

@@all = []

attr_reader :species, :name

def initialize(name)
  @name = name
  @species = "human"
  save
end

def say_species
  "I am a #{@species}."
end

def save
  @@all << self
end

def self.all
  @@all
end

def self.count
  @@all.count
end

def self.reset_all
  @@all.clear
end

def cats
  Cat.all.select {|cat| cat.owner == self }
end

def dogs
  Dog.all
end


end