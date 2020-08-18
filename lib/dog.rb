# Add your code here
class Dog
attr_accessor :name
@@all = []

def initialize(name)
  @name = name
  @@all << self #push the object into the all array
end

def self.all
  @@all
end

def self.print_all
  @@all.each do | dogobject |
    dogobject.name
  end
end

end

fifi = Dog.new("fifi")
fido = Dog.new("fido")
Dog.print_all 
