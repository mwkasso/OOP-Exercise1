class Person
	attr_accessor :name, :surname, :dob, :emails
	def initialize(name, surname, dob = "")
		@name = name
		@surname = surname
		@dob = dob
	end
end