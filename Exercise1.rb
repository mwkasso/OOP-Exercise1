class Person
	attr_reader :first_name, :surname, :dob, :emails, :phone_numbers
	
	def initialize(name, surname, dob = "")
		@first_name = name.capitalize
		@surname = surname.capitalize
		@dob = dob
		@emails = []
		@phone_numbers = []
	end

	def fullname
		return @first_name + " " +@surname
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

	def to_s
		return "#{fullname} was born on #{@dob}. \nTheir email addresses are: #{@emails}. \nTheir phone numbers are #{@phone_numbers}"
	end
end