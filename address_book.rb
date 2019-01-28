require "./contact"

class AddressBook
	attr_reader :contacts

	def intialize
		@contacts = []
	end

	def print_contact_list
		puts "Contact List:"
		contacts.each do |contact|
		puts contact.to_s('last_first')
	end
	end
end

address_book = AddressBook.new

jason = Contact.new
jason.first_name = "Jason"
jason.last_name = "Seifer"
jason.add_phone_number("home", "123-456-7890")
jason.add_phone_number("work", "555-555-5555")
jason.add_address("Home", "123 Main St.", "", "Portland", "OR", "12345")

address_book.push(jason)
address_book.print_contact_list
