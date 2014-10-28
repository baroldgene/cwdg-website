class Tutorial < ActiveRecord::Base
  validates :file_name, presence: true
  validates :content, presence: true
  validates :sha, presence: true
  validates :title, presence: true
end
