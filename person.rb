require 'Date'
class Person
	attr_accessor :first_name, :surname, :dob
	attr_reader :emails, :phone_numbers
	
	#initialize
	def initialize(name, surname, dob = nil)
		@first_name = name.capitalize
		@surname = surname.capitalize
		@dob = Date.parse(dob, '%d %b %Y')
		@emails = []
		@phone_numbers = []
	end

	# get methods

	def print_details
		puts "#{fullname}\n"
		puts '-' * fullname.length
		puts "Date of Birth: #{@dob.strftime("%d %B %Y")}\n\n"
		puts "Email Addresses:\n"
		@emails.each do |value|
			puts "- #{value}"
		end
		puts "Phone Numbers:\n"
		@phone_numbers.each do |value|
			puts "- #{value}" 
		end
		return ''
	end

	# set methods

	def fullname
		"#{@first_name} #{@surname}"
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

	# methods overrided

	def to_s
		return "#{fullname} was born on #{@dob}. \nTheir email addresses are: #{@emails}. \nTheir phone numbers are #{@phone_numbers}"
	end
end

# FamilyMember class

class FamilyMember < Person
	attr_accessor :relationship
	# *args splat parse as many args as you want
	def initialize(relationship="relationship", *args)
		@relationship = relationship
		super
	end
end

# AddressBook class

class AddressBook
	attr_reader :addressbook

	def initialize
		@addressbook = []
	end

	def add(person)
		if person.class <= Person
			@addressbook << person
		else
			# raise "error message" can also work
			puts 'Input is not a person'
		end
	end

	def list
		puts "Address Book\n"
		puts '-' * 'Address Book'.length
		puts "\n"
		@addressbook.each_with_index{|value, index| puts "Entry #{index+1}: #{value.fullname}"}
		puts ''
	end
end