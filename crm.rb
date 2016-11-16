require_relative 'contact'

class CRM

  def initialize

  end

  def main_menu
    while true
      print_main_menu
      user_selected = gets.to_i
      call_option(user_selected)
    end
  end

  def print_main_menu
     puts '[1] Add a new contact'
     puts '[2] Modify an existing contact'
     puts '[3] Delete a contact'
     puts '[4] Display all the contacts'
     puts '[5] Search by attribute'
     puts '[6] Exit'
     puts 'Enter a number: '
  end

  def call_option(user_selected)
    case user_selected
      when 1 then add_new_contact
      when 2 then modify_existing_contact
      when 3 then delete_contact
      when 4 then Contact.all
      when 5 then Contact.find_by
      when 6 then Exit
    end
  end

  def add_new_contact
      print 'Enter First Name: '
      first_name = gets.chomp

      print 'Enter Last Name: '
      last_name = gets.chomp

      print 'Enter Email Address: '
      email = gets.chomp

      print 'Enter a Note: '
      note = gets.chomp

      Contact.create(first_name, last_name, email, note)
  end

  def modify_existing_contact
    puts "Please enter the contact ID"
    id = gets.chomp.to_i
    Contact.find(id)
    contact = Contact.find(id)

    puts "Which attribute would you like to modify?"
    attibute = gets.chomp

    puts "Type in the new value:"
    new_value = gets.chomp

    contact.update(attribute, new_value)

  end

  def delete_contact
    puts "What is the ID of the user?"
    id = gets.chomp.to_i
    contact = Contact.find(id)
    contact.delete
  end

  # This method should accept as an argument an array of contacts
  # and display each contact in that array
  def display_contacts

    # HINT: Make use of this method in the display_all_contacts and search_by_attribute methods to keep your code DRY
  end

  def display_all_contacts

    # HINT: Make use of the display_contacts method to keep your code DRY
  end

  def search_by_attribute

    # HINT: Make use of the display_contacts method to keep your code DRY
  end

  # Add other methods here, if you need them.

end
