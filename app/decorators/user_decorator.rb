class UserDecorator < Draper::Decorator
  delegate_all

  def gravatar(size = nil)
    # Leave for now due to rate limiting on non authenticated
    # requests
    c = Octokit::Client.new access_token: ENV['GITHUB_ADMIN_TOKEN']

    i = c.user("#{object.username}").gravatar_id

    url = "http://www.gravatar.com/avatar/#{i}"
    size.nil? ? url : url += "?s=#{size}"
  end

	def bio
		object.bio.nil? ? "This needs to be filled in" : object.bio
	end
end
