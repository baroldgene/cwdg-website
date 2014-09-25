class UserDecorator < Draper::Decorator
  delegate_all

  def gravatar(size = nil)
    c = Octokit::Client.new access_token: ENV['GITHUB_ADMIN_TOKEN']
    "#{c.user("#{object.username}").avatar_url}&s=#{size}"
  end

  def bio
    object.bio.nil? ? "This needs to be filled in" : object.bio
  end
end
