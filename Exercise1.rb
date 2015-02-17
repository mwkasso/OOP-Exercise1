class Person
	attr_accessor :name, :surname, :dob, :emails, :phone_numbers
	
	def initialize(name, surname, dob = "")
		@name = name
		@surname = surname
		@dob = dob
		@emails = []
		@phone_num = []
	end

	def add_email(email)
		@emails << email
	end

	def add_phone(phone)
		@phone_numbers << phone
	end
end