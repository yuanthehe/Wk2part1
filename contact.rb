class Contact
  attr_reader :id
  attr_accessor :first_name, :last_name, :email, :note

  @@contacts = []
  @@id = 1
  # This method should initialize the contact's attributes
  def initialize(first_name, last_name, email, note)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @note = note

    @id = @@id
    @@id += 1
  end

  # This method should call the initializer,
  # store the newly created contact, and then return it
  def self.create(first_name, last_name, email, note)
    new_contact = Contact.new(first_name, last_name, email, note)
    @@contacts << new_contact
    return new_contact
  end

  # This method should return all of the existing contacts
  def self.all
    @@contacts
  end

  # This method should accept an id as an argument
  # and return the contact who has that id
  def self.find(id)
    @@contacts.each { |contact|
      if
        contact.id == id
      else
        return "Wrong ID"
      end
    }
  end

  # This method should allow you to specify
  # 1. which of the contact's attributes you want to update
  # 2. the new value for that attribute
  # and then make the appropriate change to the contact
  def update(attribute, new_value)
    if attribute == "first_name"
      @first_name = new_value
    end

    if attribute == "last_name"
      @last_name = new_value
    end

    if attribute == "email"
      @email = new_value
    end

    if attribute == "note"
      @note = new_value
    end

  end

  # This method should work similarly to the find method above
  # but it should allow you to search for a contact using attributes other than id
  # by specifying both the name of the attribute and the value
  # eg. searching for 'first_name', 'Betty' should return the first contact named Betty
  def self.find_by(attribute, search_term)
     @@contacts.each { |contact|

       if attribute == "first_name" && search_term == contact.first_name
         return contact
       end

       if attribute == "last_name" && search_term == contact.last_name
         return contact
       end

       if attribute == "email" && search_term == contact.email
         return contact
       end

       if attribute == "note" && search_term == contact.note
         return contact
       end
      }
      return "Contact could not be found!"
  end

  # This method should delete all of the contacts
  def self.delete_all
    @@contacts = []

  end

  def full_name
    "#{first_name} #{last_name}"
  end

  # This method should delete the contact
  # HINT: Check the Array class docs for built-in methods that might be useful here
  def delete
    @@contacts.delete(self)

  end

  # Feel free to add other methods here, if you need them.

end
