class Person
	attr_accessor :name, :surname, :dob, :emails
	
	def initialize(name, surname, dob = "")
		@name = name
		@surname = surname
		@dob = dob
		@emails = []
	end

	def add_email(email)
		@emails << email
	end

	
end