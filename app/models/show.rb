class Show < ActiveRecord::Base
  has_many :actors
  has_many :characters
  belongs_to :network

  def actors_list
    actors = []
    self.characters each do |a|
      actors << a.actor.full_name
    end
    actors
  end


end
