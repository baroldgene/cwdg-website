class Presentation < ActiveRecord::Base

  belongs_to :meeting
  belongs_to :speaker, class_name: 'User'
  belongs_to :talk
end
