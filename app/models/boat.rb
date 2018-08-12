class Boat < ActiveRecord::Base
  belongs_to  :captain
  has_many    :boat_classifications
  has_many    :classifications, through: :boat_classifications

  def self.first_five
    Boat.limit(5).order('id asc')
  end

  def self.dinghy
    Boat.select(Boat.length <= 20)
  end
end
