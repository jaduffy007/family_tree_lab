require_relative 'grandparent'
require_relative 'parent'

class Child < Parent
	attr_accessor :favColor
	@@favColors = ["blue", "yellow", "red", "green"]
	
	def initialize(name,age,gender)
		super(name,age,gender)
		@favColor = @@favColors.sample
		@@children +=1
		@@grandchildren +=1
	end

	def self.favColors
		@@favColors
	end

	def self.growUp
		@age +=1
	end

	def self.talk(text=nil)
		if @age > 2
			p {"text"} + Child.favColor
		else
			puts "Wahhh!"
		end
	end
end

