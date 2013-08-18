FactoryGirl.define do
  factory :user do
    name      'Octo Cat'
    provider  'github'
    uid       ''
    username  'octocat'
  end
end
