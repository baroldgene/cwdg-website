class Meeting < ActiveRecord::Base

  has_many :presentations
  has_many :speakers,     through: :presentations
  has_many :talks,        through: :presentations
end
