# Add your code here
require 'pry'
class Dog
attr_accessor :name
@@all = []

  def initialize(name)
    @name = name
    self.save #self refers to the instance
  end

  def save #an INSTANCE method
    @@all << self #push the object into the all array
  end


  def self.all
    @@all
  end

  def self.print_all
    @@all.each do | dogobject |
      puts dogobject.name
    end
  end

  def self.clear_all
    @@all.clear
  end

end

fifi = Dog.new("fifi")
fido = Dog.new("fido")
Dog.print_all
print Dog.all
