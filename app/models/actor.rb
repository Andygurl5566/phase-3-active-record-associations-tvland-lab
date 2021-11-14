class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name

    "#{self.first_name} #{self.last_name}"
    
  end

  def list_roles
    # returns a list of roles for the actor using the character name and show name (FAILED - 1)
    
  #  new = []
  #  a = self.shows.map {|a| a.name} 
  #  b = self.characters.map {|a| a.name}
  #  new.push(b.join("-"),a.join("-"))
  #  binding.pry

  self.characters.map {|character| "#{character.name} - #{character.show.name}"}

  end
end