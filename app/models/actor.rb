class Actor < ActiveRecord::Base
  has_many :characters

  def full_name
      full_name = self.first_name + " " + self.last_name
      full_name
    end

  def list_roles
    chars = []
    self.characters.each do |c|
      chars << c.name + " - " + c.show.name
    end
    chars
  end
end
