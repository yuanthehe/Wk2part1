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
    when 3 then delete
    when 4 then 
  # Finish off the rest for 3 through 6
  # To be clear, the methods add_new_contact and modify_existing_contact
  # haven't been implemented yet
  end
  end

  def add_new_contact

  end

  def modify_existing_contact

  end

  def delete_contact

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
