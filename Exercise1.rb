class Person
	attr_reader :first_name, :surname, :dob, :emails, :phone_numbers
	
	#initialize
	def initialize(name = "joe", surname = "bloggs", dob = "")
		@first_name = name.capitalize
		@surname = surname.capitalize
		@dob = dob
		@emails = []
		@phone_numbers = []
	end

	# get methods

	def fullname
		return @first_name + " " +@surname
	end

	def print_details
		puts "#{fullname}\n"
		puts "-" * fullname.length
		puts "Date of Birth: " + @dob.to_s + "\n\n"
		puts "Email Addresses:\n"
		@emails.each do |value|
			puts "- #{value}"
		end
		puts "Phone Numbers:\n"
		@phone_numbers.each do |value|
			puts "- #{value}" + 
		end
		return ''
	end

	# set methods

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

	# methods overrided

	def to_s
		return "#{fullname} was born on #{@dob}. \nTheir email addresses are: #{@emails}. \nTheir phone numbers are #{@phone_numbers}"
	end
end

class FamilyMember < Person
	attr_accessor :relationship
end

class AddressBook
	attr_reader :book
	def add

	end
	def list
		
	end
end