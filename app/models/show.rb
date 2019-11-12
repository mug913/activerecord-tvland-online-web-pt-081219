class Show < ActiveRecord::Base
  has_many :actors
  has_many :characters
  belongs_to :network

  def actors_list
    actors = []
    self.actors.each do |a|
      actors << a.full_name
    end
    actors
  end


end
