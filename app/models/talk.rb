class Talk < ActiveRecord::Base

  belongs_to :creator,      class_name: 'User'
  has_many   :presentations
  has_many   :speakers,     through: :presentations
end
