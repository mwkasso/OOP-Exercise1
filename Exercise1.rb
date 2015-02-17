class Person
	attr_reader :name, :surname, :dob, :emails, :phone_numbers
	
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

	def remove_email(position)
		@emails.delete_at(position)
	end

	def remove_phone(position)
		@phone_numbers.delete_at(position)
	end
end