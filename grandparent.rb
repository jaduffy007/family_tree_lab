
class Grandparent
	attr_accessor :name, :age, :gender
	@@grandchildren = 0
	@@family =[]
	def initialize(name,age,gender)
		@name = name
		@age = age
		@gender = gender
		@@grandchildren +=1
		@@family << self
	end

# attr_getters
	def self.family
		@@family
	end

	def self.grandchildren
		@@grandchildren
	end

	def self.showFamily
    fam_arr = []
    @@family.each do |value|
      fam_member = {
        relation: value.class.name,
        name: value.name,
        age: value.age
      }
      fam_arr << fam_member
    end
    p fam_arr
  	end
end


