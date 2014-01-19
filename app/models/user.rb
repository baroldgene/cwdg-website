class User < ActiveRecord::Base
  extend FriendlyId
  friendly_id :username, use: :slugged

  has_many :presentations, foreign_key: :speaker_id
  has_many :talks,         foreign_key: :creator_id

  def self.from_omniauth(auth)
    where(auth.slice("provider", "uid")).first || create_from_omniauth(auth)
  end

  def self.create_from_omniauth(auth)
    create! do |user|
      user.username = auth["info"]["nickname"]
      user.name     = auth["info"]["name"] ? auth["info"]["name"] : user.username
      user.provider = auth["provider"]
      user.uid      = auth["uid"]
      user.slug     = auth["username"]
    end
  end
end
